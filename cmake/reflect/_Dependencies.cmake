# This file will be regenerated by `mulle-sourcetree-to-cmake` via
# `mulle-sde reflect` and any edits will be lost.
#
# This file will be included by cmake/share/Files.cmake
#
# Disable generation of this file with:
#
# mulle-sde environment set MULLE_SOURCETREE_TO_CMAKE_DEPENDENCIES_FILE DISABLE
#
if( MULLE_TRACE_INCLUDE)
   message( STATUS "# Include \"${CMAKE_CURRENT_LIST_FILE}\"" )
endif()

#
# Generated from sourcetree: 3a41e3ca-a2b8-4e6b-acc1-852fe289262f;mulle-objc-runtime;no-all-load,no-bequeath,no-import,no-singlephase;
# Disable with : `mulle-sourcetree mark mulle-objc-runtime no-link`
# Disable for this platform: `mulle-sourcetree mark mulle-objc-runtime no-cmake-platform-${MULLE_UNAME}`
# Disable for a sdk: `mulle-sourcetree mark mulle-objc-runtime no-cmake-sdk-<name>`
#
if( COLLECT_DEPENDENCY_LIBRARIES_AS_NAMES)
   list( APPEND DEPENDENCY_LIBRARIES "mulle-objc-runtime")
else()
   if( NOT MULLE__OBJC__RUNTIME_LIBRARY)
      find_library( MULLE__OBJC__RUNTIME_LIBRARY NAMES
         ${CMAKE_STATIC_LIBRARY_PREFIX}mulle-objc-runtime${CMAKE_DEBUG_POSTFIX}${CMAKE_STATIC_LIBRARY_SUFFIX}
         ${CMAKE_STATIC_LIBRARY_PREFIX}mulle-objc-runtime${CMAKE_STATIC_LIBRARY_SUFFIX}
         mulle-objc-runtime
         NO_CMAKE_SYSTEM_PATH NO_SYSTEM_ENVIRONMENT_PATH
      )
      if( NOT MULLE__OBJC__RUNTIME_LIBRARY AND NOT DEPENDENCY_IGNORE_SYSTEM_LIBARIES)
         find_library( MULLE__OBJC__RUNTIME_LIBRARY NAMES
            ${CMAKE_STATIC_LIBRARY_PREFIX}mulle-objc-runtime${CMAKE_DEBUG_POSTFIX}${CMAKE_STATIC_LIBRARY_SUFFIX}
            ${CMAKE_STATIC_LIBRARY_PREFIX}mulle-objc-runtime${CMAKE_STATIC_LIBRARY_SUFFIX}
            mulle-objc-runtime
         )
      endif()
      message( STATUS "MULLE__OBJC__RUNTIME_LIBRARY is ${MULLE__OBJC__RUNTIME_LIBRARY}")
      #
      # The order looks ascending, but due to the way this file is read
      # it ends up being descending, which is what we need.
      #
      if( MULLE__OBJC__RUNTIME_LIBRARY)
         #
         # Add MULLE__OBJC__RUNTIME_LIBRARY to DEPENDENCY_LIBRARIES list.
         # Disable with: `mulle-sourcetree mark mulle-objc-runtime no-cmake-add`
         #
         list( APPEND DEPENDENCY_LIBRARIES ${MULLE__OBJC__RUNTIME_LIBRARY})
         #
         # Inherit information from dependency.
         # Encompasses: no-cmake-searchpath,no-cmake-dependency,no-cmake-loader
         # Disable with: `mulle-sourcetree mark mulle-objc-runtime no-cmake-inherit`
         #
         # temporarily expand CMAKE_MODULE_PATH
         get_filename_component( _TMP_MULLE__OBJC__RUNTIME_ROOT "${MULLE__OBJC__RUNTIME_LIBRARY}" DIRECTORY)
         get_filename_component( _TMP_MULLE__OBJC__RUNTIME_ROOT "${_TMP_MULLE__OBJC__RUNTIME_ROOT}" DIRECTORY)
         #
         #
         # Search for "Definitions.cmake" and "DependenciesAndLibraries.cmake" to include.
         # Disable with: `mulle-sourcetree mark mulle-objc-runtime no-cmake-dependency`
         #
         foreach( _TMP_MULLE__OBJC__RUNTIME_NAME "mulle-objc-runtime")
            set( _TMP_MULLE__OBJC__RUNTIME_DIR "${_TMP_MULLE__OBJC__RUNTIME_ROOT}/include/${_TMP_MULLE__OBJC__RUNTIME_NAME}/cmake")
            # use explicit path to avoid "surprises"
            if( IS_DIRECTORY "${_TMP_MULLE__OBJC__RUNTIME_DIR}")
               list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_MULLE__OBJC__RUNTIME_DIR}")
               # we only want top level INHERIT_OBJC_LOADERS, so disable them
               if( NOT NO_INHERIT_OBJC_LOADERS)
                  set( NO_INHERIT_OBJC_LOADERS OFF)
               endif()
               list( APPEND _TMP_INHERIT_OBJC_LOADERS ${NO_INHERIT_OBJC_LOADERS})
               set( NO_INHERIT_OBJC_LOADERS ON)
               #
               include( "${_TMP_MULLE__OBJC__RUNTIME_DIR}/DependenciesAndLibraries.cmake" OPTIONAL)
               #
               list( GET _TMP_INHERIT_OBJC_LOADERS -1 NO_INHERIT_OBJC_LOADERS)
               list( REMOVE_AT _TMP_INHERIT_OBJC_LOADERS -1)
               list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_MULLE__OBJC__RUNTIME_DIR}")
               #
               unset( MULLE__OBJC__RUNTIME_DEFINITIONS)
               include( "${_TMP_MULLE__OBJC__RUNTIME_DIR}/Definitions.cmake" OPTIONAL)
               list( APPEND INHERITED_DEFINITIONS ${MULLE__OBJC__RUNTIME_DEFINITIONS})
               break()
            else()
               message( STATUS "${_TMP_MULLE__OBJC__RUNTIME_DIR} not found")
            endif()
         endforeach()
      else()
         # Disable with: `mulle-sourcetree mark mulle-objc-runtime no-require-link`
         message( SEND_ERROR "MULLE__OBJC__RUNTIME_LIBRARY was not found")
      endif()
   endif()
endif()


#
# Generated from sourcetree: 20bb6006-3cb6-4711-90ef-ae1a5fa896b8;mulle-atinit;no-cmake-searchpath,no-descend,no-dynamic-link,no-import,no-intermediate-link,no-public,no-singlephase;
# Disable with : `mulle-sourcetree mark mulle-atinit no-link`
# Disable for this platform: `mulle-sourcetree mark mulle-atinit no-cmake-platform-${MULLE_UNAME}`
# Disable for a sdk: `mulle-sourcetree mark mulle-atinit no-cmake-sdk-<name>`
#
if( COLLECT_STARTUP_ALL_LOAD_DEPENDENCY_LIBRARIES_AS_NAMES)
   list( APPEND STARTUP_ALL_LOAD_DEPENDENCY_LIBRARIES "mulle-atinit")
else()
   if( NOT MULLE__ATINIT_LIBRARY)
      find_library( MULLE__ATINIT_LIBRARY NAMES
         ${CMAKE_STATIC_LIBRARY_PREFIX}mulle-atinit${CMAKE_DEBUG_POSTFIX}${CMAKE_STATIC_LIBRARY_SUFFIX}
         ${CMAKE_STATIC_LIBRARY_PREFIX}mulle-atinit${CMAKE_STATIC_LIBRARY_SUFFIX}
         NO_CMAKE_SYSTEM_PATH NO_SYSTEM_ENVIRONMENT_PATH
      )
      if( NOT MULLE__ATINIT_LIBRARY AND NOT DEPENDENCY_IGNORE_SYSTEM_LIBARIES)
         find_library( MULLE__ATINIT_LIBRARY NAMES
            ${CMAKE_STATIC_LIBRARY_PREFIX}mulle-atinit${CMAKE_DEBUG_POSTFIX}${CMAKE_STATIC_LIBRARY_SUFFIX}
            ${CMAKE_STATIC_LIBRARY_PREFIX}mulle-atinit${CMAKE_STATIC_LIBRARY_SUFFIX}
         )
      endif()
      message( STATUS "MULLE__ATINIT_LIBRARY is ${MULLE__ATINIT_LIBRARY}")
      #
      # The order looks ascending, but due to the way this file is read
      # it ends up being descending, which is what we need.
      #
      if( MULLE__ATINIT_LIBRARY)
         #
         # Add MULLE__ATINIT_LIBRARY to STARTUP_ALL_LOAD_DEPENDENCY_LIBRARIES list.
         # Disable with: `mulle-sourcetree mark mulle-atinit no-cmake-add`
         #
         list( APPEND STARTUP_ALL_LOAD_DEPENDENCY_LIBRARIES ${MULLE__ATINIT_LIBRARY})
         #
         # Inherit information from dependency.
         # Encompasses: no-cmake-searchpath,no-cmake-dependency,no-cmake-loader
         # Disable with: `mulle-sourcetree mark mulle-atinit no-cmake-inherit`
         #
         # temporarily expand CMAKE_MODULE_PATH
         get_filename_component( _TMP_MULLE__ATINIT_ROOT "${MULLE__ATINIT_LIBRARY}" DIRECTORY)
         get_filename_component( _TMP_MULLE__ATINIT_ROOT "${_TMP_MULLE__ATINIT_ROOT}" DIRECTORY)
         #
         #
         # Search for "Definitions.cmake" and "DependenciesAndLibraries.cmake" to include.
         # Disable with: `mulle-sourcetree mark mulle-atinit no-cmake-dependency`
         #
         foreach( _TMP_MULLE__ATINIT_NAME "mulle-atinit")
            set( _TMP_MULLE__ATINIT_DIR "${_TMP_MULLE__ATINIT_ROOT}/include/${_TMP_MULLE__ATINIT_NAME}/cmake")
            # use explicit path to avoid "surprises"
            if( IS_DIRECTORY "${_TMP_MULLE__ATINIT_DIR}")
               list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_MULLE__ATINIT_DIR}")
               #
               include( "${_TMP_MULLE__ATINIT_DIR}/DependenciesAndLibraries.cmake" OPTIONAL)
               #
               list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_MULLE__ATINIT_DIR}")
               #
               unset( MULLE__ATINIT_DEFINITIONS)
               include( "${_TMP_MULLE__ATINIT_DIR}/Definitions.cmake" OPTIONAL)
               list( APPEND INHERITED_DEFINITIONS ${MULLE__ATINIT_DEFINITIONS})
               break()
            else()
               message( STATUS "${_TMP_MULLE__ATINIT_DIR} not found")
            endif()
         endforeach()
         #
         # Search for "MulleObjCLoader+<name>.h" in include directory.
         # Disable with: `mulle-sourcetree mark mulle-atinit no-cmake-loader`
         #
         if( NOT NO_INHERIT_OBJC_LOADERS)
            foreach( _TMP_MULLE__ATINIT_NAME "mulle-atinit")
               set( _TMP_MULLE__ATINIT_FILE "${_TMP_MULLE__ATINIT_ROOT}/include/${_TMP_MULLE__ATINIT_NAME}/MulleObjCLoader+${_TMP_MULLE__ATINIT_NAME}.h")
               if( EXISTS "${_TMP_MULLE__ATINIT_FILE}")
                  list( APPEND INHERITED_OBJC_LOADERS ${_TMP_MULLE__ATINIT_FILE})
                  break()
               endif()
            endforeach()
         endif()
      else()
         # Disable with: `mulle-sourcetree mark mulle-atinit no-require-link`
         message( SEND_ERROR "MULLE__ATINIT_LIBRARY was not found")
      endif()
   endif()
endif()


#
# Generated from sourcetree: 74ed63a5-2891-439c-af19-0240936ad137;mulle-atexit;no-cmake-searchpath,no-descend,no-dynamic-link,no-import,no-intermediate-link,no-public,no-singlephase;
# Disable with : `mulle-sourcetree mark mulle-atexit no-link`
# Disable for this platform: `mulle-sourcetree mark mulle-atexit no-cmake-platform-${MULLE_UNAME}`
# Disable for a sdk: `mulle-sourcetree mark mulle-atexit no-cmake-sdk-<name>`
#
if( COLLECT_STARTUP_ALL_LOAD_DEPENDENCY_LIBRARIES_AS_NAMES)
   list( APPEND STARTUP_ALL_LOAD_DEPENDENCY_LIBRARIES "mulle-atexit")
else()
   if( NOT MULLE__ATEXIT_LIBRARY)
      find_library( MULLE__ATEXIT_LIBRARY NAMES
         ${CMAKE_STATIC_LIBRARY_PREFIX}mulle-atexit${CMAKE_DEBUG_POSTFIX}${CMAKE_STATIC_LIBRARY_SUFFIX}
         ${CMAKE_STATIC_LIBRARY_PREFIX}mulle-atexit${CMAKE_STATIC_LIBRARY_SUFFIX}
         NO_CMAKE_SYSTEM_PATH NO_SYSTEM_ENVIRONMENT_PATH
      )
      if( NOT MULLE__ATEXIT_LIBRARY AND NOT DEPENDENCY_IGNORE_SYSTEM_LIBARIES)
         find_library( MULLE__ATEXIT_LIBRARY NAMES
            ${CMAKE_STATIC_LIBRARY_PREFIX}mulle-atexit${CMAKE_DEBUG_POSTFIX}${CMAKE_STATIC_LIBRARY_SUFFIX}
            ${CMAKE_STATIC_LIBRARY_PREFIX}mulle-atexit${CMAKE_STATIC_LIBRARY_SUFFIX}
         )
      endif()
      message( STATUS "MULLE__ATEXIT_LIBRARY is ${MULLE__ATEXIT_LIBRARY}")
      #
      # The order looks ascending, but due to the way this file is read
      # it ends up being descending, which is what we need.
      #
      if( MULLE__ATEXIT_LIBRARY)
         #
         # Add MULLE__ATEXIT_LIBRARY to STARTUP_ALL_LOAD_DEPENDENCY_LIBRARIES list.
         # Disable with: `mulle-sourcetree mark mulle-atexit no-cmake-add`
         #
         list( APPEND STARTUP_ALL_LOAD_DEPENDENCY_LIBRARIES ${MULLE__ATEXIT_LIBRARY})
         #
         # Inherit information from dependency.
         # Encompasses: no-cmake-searchpath,no-cmake-dependency,no-cmake-loader
         # Disable with: `mulle-sourcetree mark mulle-atexit no-cmake-inherit`
         #
         # temporarily expand CMAKE_MODULE_PATH
         get_filename_component( _TMP_MULLE__ATEXIT_ROOT "${MULLE__ATEXIT_LIBRARY}" DIRECTORY)
         get_filename_component( _TMP_MULLE__ATEXIT_ROOT "${_TMP_MULLE__ATEXIT_ROOT}" DIRECTORY)
         #
         #
         # Search for "Definitions.cmake" and "DependenciesAndLibraries.cmake" to include.
         # Disable with: `mulle-sourcetree mark mulle-atexit no-cmake-dependency`
         #
         foreach( _TMP_MULLE__ATEXIT_NAME "mulle-atexit")
            set( _TMP_MULLE__ATEXIT_DIR "${_TMP_MULLE__ATEXIT_ROOT}/include/${_TMP_MULLE__ATEXIT_NAME}/cmake")
            # use explicit path to avoid "surprises"
            if( IS_DIRECTORY "${_TMP_MULLE__ATEXIT_DIR}")
               list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_MULLE__ATEXIT_DIR}")
               #
               include( "${_TMP_MULLE__ATEXIT_DIR}/DependenciesAndLibraries.cmake" OPTIONAL)
               #
               list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_MULLE__ATEXIT_DIR}")
               #
               unset( MULLE__ATEXIT_DEFINITIONS)
               include( "${_TMP_MULLE__ATEXIT_DIR}/Definitions.cmake" OPTIONAL)
               list( APPEND INHERITED_DEFINITIONS ${MULLE__ATEXIT_DEFINITIONS})
               break()
            else()
               message( STATUS "${_TMP_MULLE__ATEXIT_DIR} not found")
            endif()
         endforeach()
         #
         # Search for "MulleObjCLoader+<name>.h" in include directory.
         # Disable with: `mulle-sourcetree mark mulle-atexit no-cmake-loader`
         #
         if( NOT NO_INHERIT_OBJC_LOADERS)
            foreach( _TMP_MULLE__ATEXIT_NAME "mulle-atexit")
               set( _TMP_MULLE__ATEXIT_FILE "${_TMP_MULLE__ATEXIT_ROOT}/include/${_TMP_MULLE__ATEXIT_NAME}/MulleObjCLoader+${_TMP_MULLE__ATEXIT_NAME}.h")
               if( EXISTS "${_TMP_MULLE__ATEXIT_FILE}")
                  list( APPEND INHERITED_OBJC_LOADERS ${_TMP_MULLE__ATEXIT_FILE})
                  break()
               endif()
            endforeach()
         endif()
      else()
         # Disable with: `mulle-sourcetree mark mulle-atexit no-require-link`
         message( SEND_ERROR "MULLE__ATEXIT_LIBRARY was not found")
      endif()
   endif()
endif()
