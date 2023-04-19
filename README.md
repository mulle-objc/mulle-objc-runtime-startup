# mulle-objc-runtime-startup

#### ▶️  Startup code for the mulle-objc runtime

This static library provides the required `__register_mulle_objc_universe`
function for executables, that link against
[mulle-objc-runtime](//github.com/mulle-objc/mulle-objc-runtime)
only.

Use this library, if you want to create executables, that only
require the [mulle-objc-runtime](//github.com/mulle-objc/mulle-objc-runtime)
and nothing else. Most projects will link against
[MulleObjC](//github.com/mulle-objc/MulleObjC) or the MulleFoundation
though, and will use the startup libraries.

| Release Version                                       | Release Notes
|-------------------------------------------------------|--------------
| ![Mulle kybernetiK tag](https://img.shields.io/github/tag//mulle-objc-runtime-startup.svg?branch=release) [![Build Status](https://github.com//mulle-objc-runtime-startup/workflows/CI/badge.svg?branch=release)](//github.com//mulle-objc-runtime-startup/actions)| [RELEASENOTES](RELEASENOTES.md) |




## Sourcetree

The main raison d'être of mulle-objc-runtime-startup as a seperate library
is to bequeath the required dependencies [mulle-atinit](//github.com/mulle-core/mulle-atinit) and
[mulle-atexit](//github.com/mulle-core/mulle-atexit) for linking with the executable.



## Requirements

|   Requirement         | Release Version  | Description
|-----------------------|------------------|---------------
| [mulle-objc-runtime](https://github.com/mulle-objc/mulle-objc-runtime) | ![Mulle kybernetiK tag](https://img.shields.io/github/tag//.svg) [![Build Status](https://github.com///workflows/CI/badge.svg?branch=release)](https://github.com///actions/workflows/mulle-sde-ci.yml) | ⏩ A fast, portable Objective-C runtime written 100% in C11
| [mulle-atinit](https://github.com/mulle-core/mulle-atinit) | ![Mulle kybernetiK tag](https://img.shields.io/github/tag//.svg) [![Build Status](https://github.com///workflows/CI/badge.svg?branch=release)](https://github.com///actions/workflows/mulle-sde-ci.yml) | 🤱🏼 Compatibility library for deterministic initializers
| [mulle-atexit](https://github.com/mulle-core/mulle-atexit) | ![Mulle kybernetiK tag](https://img.shields.io/github/tag//.svg) [![Build Status](https://github.com///workflows/CI/badge.svg?branch=release)](https://github.com///actions/workflows/mulle-sde-ci.yml) | 👼 Compatibility library to fix atexit
| [mulle-dlfcn](https://github.com/mulle-core/mulle-dlfcn) | ![Mulle kybernetiK tag](https://img.shields.io/github/tag//.svg) [![Build Status](https://github.com///workflows/CI/badge.svg?branch=release)](https://github.com///actions/workflows/mulle-sde-ci.yml) | ♿️ Shared library helper


## Add

Use [mulle-sde](//github.com/mulle-sde) to add mulle-objc-runtime-startup to your project:

``` sh
mulle-sde add github:/
```

To only add the sources of mulle-objc-runtime-startup with dependency
sources use [clib](https://github.com/clibs/clib):


``` sh
clib install --out src/ /
```

Add `-isystem src/` to your `CFLAGS` and compile all the sources that were downloaded with your project.


## Install

### Install with mulle-sde

Use [mulle-sde](//github.com/mulle-sde) to build and install mulle-objc-runtime-startup and all dependencies:

``` sh
mulle-sde install --prefix /usr/local \
   https://github.com///archive/latest.tar.gz
```

### Manual Installation

Install the [Requirements](#Requirements) and then
install **mulle-objc-runtime-startup** with [cmake](https://cmake.org):

``` sh
cmake -B build \
      -DCMAKE_INSTALL_PREFIX=/usr/local \
      -DCMAKE_PREFIX_PATH=/usr/local \
      -DCMAKE_BUILD_TYPE=Release &&
cmake --build build --config Release &&
cmake --install build --config Release
```

## Author

[Nat!](https://mulle-kybernetik.com/weblog) for Mulle kybernetiK


