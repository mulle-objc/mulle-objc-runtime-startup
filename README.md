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
| ![Mulle kybernetiK tag](https://img.shields.io/github/tag/mulle-objc/mulle-objc-runtime-startup.svg?branch=release) [![Build Status](https://github.com/mulle-objc/mulle-objc-runtime-startup/workflows/CI/badge.svg?branch=release)](//github.com/mulle-objc/mulle-objc-runtime-startup/actions) | [RELEASENOTES](RELEASENOTES.md) |





## Sourcetree

The main raison d'être of mulle-objc-runtime-startup as a seperate library
is to bequeath the required dependencies [mulle-atinit](//github.com/mulle-core/mulle-atinit) and
[mulle-atexit](//github.com/mulle-core/mulle-atexit) for linking with the executable.



### You are here

![Overview](overview.dot.svg)



## Requirements

|   Requirement         | Release Version  | Description
|-----------------------|------------------|---------------
| [mulle-objc-runtime](https://github.com/mulle-objc/mulle-objc-runtime) | ![Mulle kybernetiK tag](https://img.shields.io/github/tag/mulle-objc/mulle-objc-runtime.svg) [![Build Status](https://github.com/mulle-objc/mulle-objc-runtime/workflows/CI/badge.svg?branch=release)](https://github.com/mulle-objc/mulle-objc-runtime/actions/workflows/mulle-sde-ci.yml) | ⏩ A fast, portable Objective-C runtime written 100% in C11
| [mulle-atinit](https://github.com/mulle-core/mulle-atinit) | ![Mulle kybernetiK tag](https://img.shields.io/github/tag/mulle-core/mulle-atinit.svg) [![Build Status](https://github.com/mulle-core/mulle-atinit/workflows/CI/badge.svg?branch=release)](https://github.com/mulle-core/mulle-atinit/actions/workflows/mulle-sde-ci.yml) | 🤱🏼 Compatibility library for deterministic initializers
| [mulle-atexit](https://github.com/mulle-core/mulle-atexit) | ![Mulle kybernetiK tag](https://img.shields.io/github/tag/mulle-core/mulle-atexit.svg) [![Build Status](https://github.com/mulle-core/mulle-atexit/workflows/CI/badge.svg?branch=release)](https://github.com/mulle-core/mulle-atexit/actions/workflows/mulle-sde-ci.yml) | 👼 Compatibility library to fix atexit


## Add

### Add as an individual component

Use [mulle-sde](//github.com/mulle-sde) to add mulle-objc-runtime-startup to your project:

``` sh
mulle-sde add github:mulle-objc/mulle-objc-runtime-startup
```

To only add the sources of mulle-objc-runtime-startup with dependency
sources use [clib](https://github.com/clibs/clib):


``` sh
clib install --out src/mulle-objc mulle-objc/mulle-objc-runtime-startup
```

Add `-isystem src/mulle-objc` to your `CFLAGS` and compile all the sources that were downloaded with your project.


## Install

### Install with mulle-sde

Use [mulle-sde](//github.com/mulle-sde) to build and install mulle-objc-runtime-startup and all dependencies:

``` sh
mulle-sde install --prefix /usr/local \
   https://github.com/mulle-objc/mulle-objc-runtime-startup/archive/latest.tar.gz
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



