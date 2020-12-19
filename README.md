# mulle-objc-runtime-startup

#### ▶️  Startup code for the mulle-objc runtime


This static library provides the required `__register_mulle_objc_universe`
function for executables, that link against
[mulle-objc-runtime](https://github.com/mulle-objc/mulle-objc-runtime)
only.

Use this library, if you want to create executables, that only
require the [mulle-objc-runtime](//github.com/mulle-objc/mulle-objc-runtime)
and nothing else. Most projects will link against
[MulleObjC](https://github.com/mulle-objc/MulleObjC) or the MulleFoundation
though, and will use the startup libraries.



Build Status | Release Version
-------------|-----------------------------------
[![Build Status](https://travis-ci.org/mulle-objc/mulle-objc-runtime-startup.svg)](https://travis-ci.org/mulle-objc/mulle-objc) | ![Mulle kybernetiK tag](https://img.shields.io/github/tag/mulle-objc/mulle-objc-runtime-startup.svg) [![Build Status](https://travis-ci.org/mulle-objc/mulle-objc-runtime-startup.svg?branch=release)](https://travis-ci.org/mulle-objc/mulle-objc-runtime-startup)


## Sourcetree

The main raison d'être of mulle-objc-runtime-startup as a seperate library
is to bequeath the required dependencies [mulle-atinit](//github.com/mulle-core/mulle-atinit) and
[mulle-atexit](//github.com/mulle-core/mulle-atexit) for linking with the executable.


## Install

See [mulle-objc-developer](//github.com/mulle-objc/mulle-objc-developer) for
installation instructions.


## Build

### Manually with cmake

Install all above prerequisites:

now build the project

```
(
   mkdir build &&
   cd build &&
   cmake .. &&
   make
)
```

### Conveniently with mulle-sde

Install [mulle-sde]/(//github.com/mulle-sde) and run `mulle-sde craft`.


### Platforms and Compilers

All platforms and compilers supported by
[mulle-c11](//github.com/mulle-c/mulle-c11/) and
[mulle-thread](//github.com/mulle-concurrent/mulle-thread/).


## Author

[Nat!](//www.mulle-kybernetik.com/weblog) for
[Mulle kybernetiK](//www.mulle-kybernetik.com) and
[Codeon GmbH](//www.codeon.de)
