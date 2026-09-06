# mulle-objc-runtime-startup Library Documentation for AI
<!-- Keywords: objc, runtime, startup, universe, register, stacktrace, static -->
## 1. Introduction & Purpose

- Provides the minimal startup glue for executables that link only against `mulle-objc-runtime`.
- Ship as a **static** library, containing the required definition of the `__register_mulle_objc_universe` symbol, which a program (or the runtime itself, see `mulle_objc_global_register_universe`) uses to obtain and initialize a `mulle_objc` universe at process startup.
- Key features: extremely small (one `.c` file, no shipped headers), idempotent universe initialization, automatic installation of a stacktrace callback (`mulle_stacktrace_once`) on the universe.
- Relationship: depends on `mulle-objc-runtime` and `mulle-stacktrace`; supplemental to higher-level `MulleObjC` and `MulleFoundation` startup libraries. Its raison d'être is to bequeath the required dependencies for linking with an executable.

## 2. Key Concepts & Design Philosophy

- **Minimalism:** ship only the symbol needed by executables that want the runtime but not the full Objective-C foundation.
- **Idempotent initialization:** the registration function returns the same universe pointer on every call (source comment: "always returns same value (in same thread)").
- **Link-time wiring:** intended to be linked as a static component; users usually add via `mulle-sde` or as a CMake subproject.
- **Single implementation file:** this project defines *no public headers*. The function signature is declared by the `mulle-objc-runtime` header `mulle-objc-universe.h`; this project only provides the *definition* of `__register_mulle_objc_universe` (guarded by `MULLE_OBJC_DEFINE_REGISTER_UNIVERSE`).
- **Stacktraces on initialization:** since 0.22.0, each registration wires `mulle_stacktrace_once` as the universe's failure/stacktrace callback, so stack traces are emitted on universe runtime failures.

## 3. Core API & Data Structures

This project exposes no data structures and no installed header of its own. The public entry point is a single function that the runtime's header references as an extern. It must be defined exactly once per executable.

### 3.1. `src/mulle-objc-runtime-startup.c` (the whole library)

#### `__register_mulle_objc_universe`
- **Declared by `mulle-objc-runtime` in `mulle-objc-universe.h` (verbatim):**
```c
#ifdef MULLE_OBJC_DEFINE_REGISTER_UNIVERSE
MULLE_C_GLOBAL
#else
MULLE_C_EXTERN_GLOBAL
#endif
MULLE_C_CONST_RETURN
   struct _mulle_objc_universe  *
      __register_mulle_objc_universe( mulle_objc_universeid_t universeid,
                                      char *universename);
```
- **Definition in this library (verbatim):**
```c
MULLE_C_CONST_RETURN
struct _mulle_objc_universe  *
   __register_mulle_objc_universe( mulle_objc_universeid_t universeid,
                                   char *universename)
```
- **Purpose:** Return (and initialize if necessary) the universe object identified by `universeid`/`universename`.
- **Behavior:** (`src/mulle-objc-runtime-startup.c`)
  1. Lookup-or-create the universe via `__mulle_objc_global_get_universe( universeid, universename)`.
  2. If `_mulle_objc_universe_is_uninitialized( universe)`, initialize it via `_mulle_objc_universe_bang( universe, 0, NULL, NULL)`.
  3. Install `mulle_stacktrace_once` as the universe's stacktrace callback via `mulle_objc_universe_set_stacktrace_callback( universe, mulle_stacktrace_once)`.
  4. Return the universe pointer (never `NULL` in the success path).
- **Note:** `universeid` of `0` refers to the default universe.

#### `mulle_objc_universe_set_stacktrace_callback`
- Declared *locally inside this library's `.c`* (kept compatible with older cached runtime headers). The symbol itself is supplied by the runtime built alongside this startup library. In the current runtime (`mulle-objc-universe-fail.h`) the real type is:
```c
typedef void   mulle_objc_stacktrace_callback_t( FILE *fp);

MULLE_OBJC_RUNTIME_GLOBAL
void
   mulle_objc_universe_set_stacktrace_callback(
      struct _mulle_objc_universe *universe,
      mulle_objc_stacktrace_callback_t *callback);
```

#### `MULLE_OBJC_DEFINE_REGISTER_UNIVERSE`
- Macro that must be defined in the `.c` providing the `__register_mulle_objc_universe` definition (and nowhere else). It causes the runtime header to emit `MULLE_C_GLOBAL` (a definition) instead of `MULLE_C_EXTERN_GLOBAL`.

#### `MULLE_OBJC_RUNTIME_STARTUP_VERSION`
- Version encoding macro, currently `((0UL << 20) | (22 << 8) | 0)` i.e. version 0.22.0. Useful for diagnostics.

### 3.2. Referenced runtime symbols (from `mulle-objc-runtime`, not defined here)
- `__mulle_objc_global_get_universe( mulle_objc_universeid_t universeid, char *universename)` — lookup/create the universe.
- `_mulle_objc_universe_is_uninitialized( struct _mulle_objc_universe *universe)` — check init state.
- `_mulle_objc_universe_bang( struct _mulle_objc_universe *universe, void (*bang)(...), struct mulle_allocator *allocator, void *userinfo)` — perform initialization.
- `mulle_objc_global_register_universe( mulle_objc_universeid_t universeid, char *universename)` — runtime entry point that calls `__register_mulle_objc_universe` (raised in `mulle-objc-universe.c`).

## 4. Performance Characteristics

- Complexity: O(1) lookup/initialization semantics; negligible overhead after the first call.
- Memory: minimal, beyond the runtime's universe structure. No allocations are made by this library itself.
- Thread-safety: the source comment indicates same-thread consistency of the returned pointer. Consult `mulle-objc-runtime` for multi-thread initialization guarantees.
- The stacktrace callback is only registered on the universe; it does not affect normal-operation performance.

## 5. AI Usage Recommendations & Patterns

- **Best Practices:**
  - Link this *static* library into an executable (the build enforces static; see `CMakeLists.txt`: `BUILD_SHARED_LIBS` is a fatal error).
  - Ensure `MULLE_OBJC_DEFINE_REGISTER_UNIVERSE` is defined exactly once, in the source that defines `__register_mulle_objc_universe` (this library does it; you must not define the same symbol again).
  - Include `<mulle-objc-runtime/mulle-objc-runtime.h>` to get the universe type (`struct _mulle_objc_universe`), `mulle_objc_universeid_t`, and the registration helpers.
  - Add the library with `mulle-sde add github:mulle-objc/mulle-objc-runtime-startup` or as a CMake subproject.
- **Common Pitfalls:**
  - Do not define `__register_mulle_objc_universe` yourself while linking this library (symbol collision).
  - Do not link this library when a higher-level startup (e.g. `MulleObjC-startup`) already provides universe registration wiring.
  - If `universename` is dynamically allocated, keep its lifetime — the universe stores the pointer.
  - The ownership of the returned universe is managed by the runtime; do not free it.

## 6. Integration Examples

### Example 1: Minimal executable that registers the universe

```c
#include <mulle-objc-runtime/mulle-objc-runtime.h>

#include <assert.h>
#include <stdlib.h>

int
main( int argc, char *argv[])
{
   struct _mulle_objc_universe   *universe;

   // this invokes __register_mulle_objc_universe, provided by
   // mulle-objc-runtime-startup
   universe = mulle_objc_global_register_universe( 0, "main");
   assert( universe);

   // universe is initialized and a stacktrace callback is installed
   return( 0);
}
```

### Example 2: Linking the startup library with CMake

```cmake
add_subdirectory( stash/mulle-objc-runtime)
add_subdirectory( stash/mulle-objc-runtime-startup)

target_link_libraries( ${PROJECT_NAME} PUBLIC mulle-objc-runtime-startup)
target_link_libraries( ${PROJECT_NAME} PUBLIC mulle-objc-runtime)
```

## 7. Dependencies

Direct `mulle-sde`/`clib` dependencies:
- `mulle-core/mulle-stacktrace` (new in 0.22.0, provides `mulle_stacktrace_once`)
- `mulle-objc/mulle-objc-runtime` (provides the universe types, the declared signature, and initialization primitives)

Transitively (via `mulle-objc-runtime` / `mulle-core`): `mulle-atinit`, `mulle-atexit`.

<!-- End of TOC.md -->