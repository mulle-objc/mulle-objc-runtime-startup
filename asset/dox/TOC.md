# mulle-objc-runtime-startup Library Documentation for AI
<!-- Keywords: objc, startup, runtime, universe, register -->
## 1. Introduction & Purpose

- Provides the minimal startup glue for executables that link only against mulle-objc-runtime.
- Exposes the required symbol __register_mulle_objc_universe so a program can obtain and initialize a mulle_objc universe at process startup.
- Key features: minimal static library, tiny implementation, ensures universe initialization and ties in atinit/atexit infrastructure.
- Relationship: depends on mulle-objc-runtime and provides startup wiring; supplemental to higher-level MulleObjC and MulleFoundation.

## 2. Key Concepts & Design Philosophy

- Minimalism: ship only the symbols needed by executables that want the runtime but not the full Objective-C foundation.
- Idempotent initialization: calling the registration function returns the same universe pointer (comment: "always returns same value (in same thread)").
- Link-time wiring: intended to be linked as a static component; users usually add via mulle-sde or as a cmake subproject.

## 3. Core API & Data Structures

This section maps the public API surface an AI needs to reason about. Clients typically include <mulle-objc-runtime-startup/mulle-objc-runtime-startup.h>.

### 3.1. mulle-objc-runtime-startup.h

#### `__register_mulle_objc_universe`
- **Signature:**
  struct _mulle_objc_universe  *
     __register_mulle_objc_universe( mulle_objc_universeid_t universeid,
                                     char *universename);
- **Purpose:** Return (and initialize if necessary) the universe object identified by universeid/universename.
- **Behavior:** If the universe is uninitialized, implementation calls universe initialization code (_mulle_objc_universe_bang) and returns the initialized pointer.
- **Note:** Source comment: "always returns same value (in same thread)" — initialization is intended to be idempotent.

#### `MULLE_OBJC_RUNTIME_STARTUP_VERSION`
- Version macro encoded in the implementation; useful for diagnostics.

#### `MULLE_OBJC_DEFINE_REGISTER_UNIVERSE`
- Macro used internally to define the registration symbol. Clients normally do not define this.

### 3.2. Referenced Runtime Symbols
- __mulle_objc_global_get_universe() — lookup/create universe (from mulle-objc-runtime)
- _mulle_objc_universe_is_uninitialized() — check init state
- _mulle_objc_universe_bang() — perform initialization (from mulle-objc-runtime)

## 4. Performance Characteristics

- Complexity: O(1) lookup/initialization semantics; negligible overhead after first call.
- Memory: Minimal additional memory beyond the runtime's universe structure.
- Thread-safety: Comment indicates same-thread consistency; consult runtime for multi-thread init guarantees.

## 5. AI Usage Recommendations & Patterns

- Best Practices:
  - Link this library when an executable only requires the Objective-C runtime.
  - Include: #include <mulle-objc-runtime-startup/mulle-objc-runtime-startup.h>
  - Prefer mulle-sde add or cmake add_subdirectory for inclusion.
- Pitfalls:
  - Do not duplicate startup wiring if higher-level startup libraries are linked.
  - Ensure universename lifetime if dynamically allocated.

## 6. Integration Examples

### Example 1: Basic registration and usage

```c
#include <stdlib.h>
#include <stdio.h>
#include <mulle-objc-runtime-startup/mulle-objc-runtime-startup.h>

int
main( int argc, char *argv[])
{
   struct _mulle_objc_universe  *universe;

   universe = __register_mulle_objc_universe( 0, "main");
   if( ! universe)
   {
      fprintf( stderr, "failed to register universe\n");
      return( 1);
   }

   /* At this point the runtime universe is initialized and ready. */
   return( 0);
}
```

### Example 2: Add library with mulle-sde (recommended)

```sh
mulle-sde add github:mulle-objc/mulle-objc-runtime-startup
```

## 7. Dependencies

- mulle-objc-runtime
- mulle-atinit
- mulle-atexit

<!-- End of TOC.md -->
