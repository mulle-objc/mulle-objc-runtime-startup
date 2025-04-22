cmake_minimum_required( VERSION 3.14)

project( mulle-objc-runtime-startup VERSION 0.20.6 LANGUAGES C)


### mulle-sde environment

# add cmake module paths to search path
list( INSERT CMAKE_MODULE_PATH 0 "${CMAKE_CURRENT_SOURCE_DIR}/cmake/share")
list( INSERT CMAKE_MODULE_PATH 0 "${CMAKE_CURRENT_SOURCE_DIR}/cmake/reflect")
list( INSERT CMAKE_MODULE_PATH 0 "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

include( Environment)

include( CCompiler)

include( Files)



### Library

if( HEADERS_PHASE)
   #
   # voodoo: even if nothing gets installed we need some "install" targets
   #         here, so that the ninja file actually understands the install
   #         command.
   #
   #install( FILES ${INSTALL_PUBLIC_HEADERS}  DESTINATION "include/${PROJECT_NAME}")
   #install( FILES ${INSTALL_PRIVATE_HEADERS} DESTINATION "include/${PROJECT_NAME}")
   install( FILES ${INSTALL_CMAKE_INCLUDES}          DESTINATION "include/${PROJECT_NAME}/cmake")


   # short cut out
   if( NOT COMPILE_PHASE AND NOT LINK_PHASE)
      return()
   endif()
endif()

if( LINK_PHASE)
   include( Dependencies OPTIONAL)
endif()


if( BUILD_SHARED_LIBS)
   message( FATAL_ERROR "Startup library must be built static")
endif()

# we are the startup library, so unset
unset( STARTUP_LIBRARY_NAME)

include( Library)

# use LIBRARY_COMPILE_TARGET for compiler options
target_compile_definitions( "${LIBRARY_COMPILE_TARGET}" PUBLIC)
target_compile_options( "${LIBRARY_COMPILE_TARGET}" PUBLIC  -Wall)
# use LIBRARY_LINK_TARGET for linker options
if( LINK_PHASE)
   target_link_options( "${LIBRARY_LINK_TARGET}" PUBLIC)
endif()

include( InstallLibrary)

include( FinalOutput OPTIONAL)
