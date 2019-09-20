#
# cmake/_Dependencies.cmake is generated by `mulle-sde`. Edits will be lost.
# Disable generation of this file with:
#   mulle-sde environment  --global set MULLE_SOURCETREE_TO_CMAKE_DEPENDENCIES_FILE DISABLE
if( MULLE_TRACE_INCLUDE)
   message( STATUS "# Include \"${CMAKE_CURRENT_LIST_FILE}\"" )
endif()

#
# Generated from sourcetree: mulle-objc-runtime;no-all-load,no-bequeath,no-import,no-singlephase;
# Disable with: `mulle-sourcetree mark mulle-objc-runtime no-link`
#
if( NOT MULLE_OBJC_RUNTIME_LIBRARY)
   find_library( MULLE_OBJC_RUNTIME_LIBRARY NAMES ${CMAKE_STATIC_LIBRARY_PREFIX}mulle-objc-runtime${CMAKE_STATIC_LIBRARY_SUFFIX} mulle-objc-runtime NO_CMAKE_SYSTEM_PATH)
   message( STATUS "MULLE_OBJC_RUNTIME_LIBRARY is ${MULLE_OBJC_RUNTIME_LIBRARY}")
   #
   # The order looks ascending, but due to the way this file is read
   # it ends up being descending, which is what we need.
   #
   if( MULLE_OBJC_RUNTIME_LIBRARY)
      #
      # Add to MULLE_OBJC_RUNTIME_LIBRARY list.
      # Disable with: `mulle-sourcetree mark mulle-objc-runtime no-cmakeadd`
      #
      set( DEPENDENCY_LIBRARIES
         ${DEPENDENCY_LIBRARIES}
         ${MULLE_OBJC_RUNTIME_LIBRARY}
         CACHE INTERNAL "need to cache this"
      )
      #
      # Inherit ObjC loader and link dependency info.
      # Disable with: `mulle-sourcetree mark mulle-objc-runtime no-cmakeinherit`
      #
      # // temporarily expand CMAKE_MODULE_PATH
      get_filename_component( _TMP_MULLE_OBJC_RUNTIME_ROOT "${MULLE_OBJC_RUNTIME_LIBRARY}" DIRECTORY)
      get_filename_component( _TMP_MULLE_OBJC_RUNTIME_ROOT "${_TMP_MULLE_OBJC_RUNTIME_ROOT}" DIRECTORY)
      #
      #
      # Search for "DependenciesAndLibraries.cmake" to include.
      # Disable with: `mulle-sourcetree mark mulle-objc-runtime no-cmakedependency`
      #
      foreach( _TMP_MULLE_OBJC_RUNTIME_NAME "mulle-objc-runtime")
         set( _TMP_MULLE_OBJC_RUNTIME_DIR "${_TMP_MULLE_OBJC_RUNTIME_ROOT}/include/${_TMP_MULLE_OBJC_RUNTIME_NAME}/cmake")
         # use explicit path to avoid "surprises"
         if( EXISTS "${_TMP_MULLE_OBJC_RUNTIME_DIR}/DependenciesAndLibraries.cmake")
            unset( MULLE_OBJC_RUNTIME_DEFINITIONS)
            list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_MULLE_OBJC_RUNTIME_DIR}")
            # we only want top level INHERIT_OBJC_LOADERS, so disable them
            if( NOT NO_INHERIT_OBJC_LOADERS)
               set( NO_INHERIT_OBJC_LOADERS OFF)
            endif()
            list( APPEND _TMP_INHERIT_OBJC_LOADERS ${NO_INHERIT_OBJC_LOADERS})
            set( NO_INHERIT_OBJC_LOADERS ON)
            #
            include( "${_TMP_MULLE_OBJC_RUNTIME_DIR}/DependenciesAndLibraries.cmake")
            #
            list( GET _TMP_INHERIT_OBJC_LOADERS -1 NO_INHERIT_OBJC_LOADERS)
            list( REMOVE_AT _TMP_INHERIT_OBJC_LOADERS -1)
            #
            list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_MULLE_OBJC_RUNTIME_DIR}")
            set( INHERITED_DEFINITIONS
               ${INHERITED_DEFINITIONS}
               ${MULLE_OBJC_RUNTIME_DEFINITIONS}
               CACHE INTERNAL "need to cache this"
            )
            break()
         else()
            message( STATUS "${_TMP_MULLE_OBJC_RUNTIME_DIR}/DependenciesAndLibraries.cmake not found")
         endif()
      endforeach()
   else()
      message( FATAL_ERROR "MULLE_OBJC_RUNTIME_LIBRARY was not found")
   endif()
endif()


#
# Generated from sourcetree: mulle-atinit;no-dynamic-link,no-import,no-intermediate-link,no-public,no-singlephase;
# Disable with: `mulle-sourcetree mark mulle-atinit no-link`
#
if( NOT MULLE_ATINIT_LIBRARY)
   find_library( MULLE_ATINIT_LIBRARY NAMES ${CMAKE_STATIC_LIBRARY_PREFIX}mulle-atinit${CMAKE_STATIC_LIBRARY_SUFFIX} mulle-atinit NO_CMAKE_SYSTEM_PATH)
   message( STATUS "MULLE_ATINIT_LIBRARY is ${MULLE_ATINIT_LIBRARY}")
   #
   # The order looks ascending, but due to the way this file is read
   # it ends up being descending, which is what we need.
   #
   if( MULLE_ATINIT_LIBRARY)
      #
      # Add to MULLE_ATINIT_LIBRARY list.
      # Disable with: `mulle-sourcetree mark mulle-atinit no-cmakeadd`
      #
      set( STARTUP_ALL_LOAD_DEPENDENCY_LIBRARIES
         ${STARTUP_ALL_LOAD_DEPENDENCY_LIBRARIES}
         ${MULLE_ATINIT_LIBRARY}
         CACHE INTERNAL "need to cache this"
      )
      #
      # Inherit ObjC loader and link dependency info.
      # Disable with: `mulle-sourcetree mark mulle-atinit no-cmakeinherit`
      #
      # // temporarily expand CMAKE_MODULE_PATH
      get_filename_component( _TMP_MULLE_ATINIT_ROOT "${MULLE_ATINIT_LIBRARY}" DIRECTORY)
      get_filename_component( _TMP_MULLE_ATINIT_ROOT "${_TMP_MULLE_ATINIT_ROOT}" DIRECTORY)
      #
      #
      # Search for "DependenciesAndLibraries.cmake" to include.
      # Disable with: `mulle-sourcetree mark mulle-atinit no-cmakedependency`
      #
      foreach( _TMP_MULLE_ATINIT_NAME "mulle-atinit")
         set( _TMP_MULLE_ATINIT_DIR "${_TMP_MULLE_ATINIT_ROOT}/include/${_TMP_MULLE_ATINIT_NAME}/cmake")
         # use explicit path to avoid "surprises"
         if( EXISTS "${_TMP_MULLE_ATINIT_DIR}/DependenciesAndLibraries.cmake")
            unset( MULLE_ATINIT_DEFINITIONS)
            list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_MULLE_ATINIT_DIR}")
            # we only want top level INHERIT_OBJC_LOADERS, so disable them
            if( NOT NO_INHERIT_OBJC_LOADERS)
               set( NO_INHERIT_OBJC_LOADERS OFF)
            endif()
            list( APPEND _TMP_INHERIT_OBJC_LOADERS ${NO_INHERIT_OBJC_LOADERS})
            set( NO_INHERIT_OBJC_LOADERS ON)
            #
            include( "${_TMP_MULLE_ATINIT_DIR}/DependenciesAndLibraries.cmake")
            #
            list( GET _TMP_INHERIT_OBJC_LOADERS -1 NO_INHERIT_OBJC_LOADERS)
            list( REMOVE_AT _TMP_INHERIT_OBJC_LOADERS -1)
            #
            list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_MULLE_ATINIT_DIR}")
            set( INHERITED_DEFINITIONS
               ${INHERITED_DEFINITIONS}
               ${MULLE_ATINIT_DEFINITIONS}
               CACHE INTERNAL "need to cache this"
            )
            break()
         else()
            message( STATUS "${_TMP_MULLE_ATINIT_DIR}/DependenciesAndLibraries.cmake not found")
         endif()
      endforeach()
      #
      # Search for "objc-loader.inc" in include directory.
      # Disable with: `mulle-sourcetree mark mulle-atinit no-cmakeloader`
      #
      if( NOT NO_INHERIT_OBJC_LOADERS)
         foreach( _TMP_MULLE_ATINIT_NAME "mulle-atinit")
            set( _TMP_MULLE_ATINIT_FILE "${_TMP_MULLE_ATINIT_ROOT}/include/${_TMP_MULLE_ATINIT_NAME}/MulleObjCLoader+${_TMP_MULLE_ATINIT_NAME}.h")
            if( EXISTS "${_TMP_MULLE_ATINIT_FILE}")
               set( INHERITED_OBJC_LOADERS
                  ${INHERITED_OBJC_LOADERS}
                  ${_TMP_MULLE_ATINIT_FILE}
                  CACHE INTERNAL "need to cache this"
               )
               break()
            endif()
         endforeach()
      endif()
   else()
      message( FATAL_ERROR "MULLE_ATINIT_LIBRARY was not found")
   endif()
endif()


#
# Generated from sourcetree: mulle-atexit;no-dynamic-link,no-import,no-intermediate-link,no-public,no-singlephase;
# Disable with: `mulle-sourcetree mark mulle-atexit no-link`
#
if( NOT MULLE_ATEXIT_LIBRARY)
   find_library( MULLE_ATEXIT_LIBRARY NAMES ${CMAKE_STATIC_LIBRARY_PREFIX}mulle-atexit${CMAKE_STATIC_LIBRARY_SUFFIX} mulle-atexit NO_CMAKE_SYSTEM_PATH)
   message( STATUS "MULLE_ATEXIT_LIBRARY is ${MULLE_ATEXIT_LIBRARY}")
   #
   # The order looks ascending, but due to the way this file is read
   # it ends up being descending, which is what we need.
   #
   if( MULLE_ATEXIT_LIBRARY)
      #
      # Add to MULLE_ATEXIT_LIBRARY list.
      # Disable with: `mulle-sourcetree mark mulle-atexit no-cmakeadd`
      #
      set( STARTUP_ALL_LOAD_DEPENDENCY_LIBRARIES
         ${STARTUP_ALL_LOAD_DEPENDENCY_LIBRARIES}
         ${MULLE_ATEXIT_LIBRARY}
         CACHE INTERNAL "need to cache this"
      )
      #
      # Inherit ObjC loader and link dependency info.
      # Disable with: `mulle-sourcetree mark mulle-atexit no-cmakeinherit`
      #
      # // temporarily expand CMAKE_MODULE_PATH
      get_filename_component( _TMP_MULLE_ATEXIT_ROOT "${MULLE_ATEXIT_LIBRARY}" DIRECTORY)
      get_filename_component( _TMP_MULLE_ATEXIT_ROOT "${_TMP_MULLE_ATEXIT_ROOT}" DIRECTORY)
      #
      #
      # Search for "DependenciesAndLibraries.cmake" to include.
      # Disable with: `mulle-sourcetree mark mulle-atexit no-cmakedependency`
      #
      foreach( _TMP_MULLE_ATEXIT_NAME "mulle-atexit")
         set( _TMP_MULLE_ATEXIT_DIR "${_TMP_MULLE_ATEXIT_ROOT}/include/${_TMP_MULLE_ATEXIT_NAME}/cmake")
         # use explicit path to avoid "surprises"
         if( EXISTS "${_TMP_MULLE_ATEXIT_DIR}/DependenciesAndLibraries.cmake")
            unset( MULLE_ATEXIT_DEFINITIONS)
            list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_MULLE_ATEXIT_DIR}")
            # we only want top level INHERIT_OBJC_LOADERS, so disable them
            if( NOT NO_INHERIT_OBJC_LOADERS)
               set( NO_INHERIT_OBJC_LOADERS OFF)
            endif()
            list( APPEND _TMP_INHERIT_OBJC_LOADERS ${NO_INHERIT_OBJC_LOADERS})
            set( NO_INHERIT_OBJC_LOADERS ON)
            #
            include( "${_TMP_MULLE_ATEXIT_DIR}/DependenciesAndLibraries.cmake")
            #
            list( GET _TMP_INHERIT_OBJC_LOADERS -1 NO_INHERIT_OBJC_LOADERS)
            list( REMOVE_AT _TMP_INHERIT_OBJC_LOADERS -1)
            #
            list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_MULLE_ATEXIT_DIR}")
            set( INHERITED_DEFINITIONS
               ${INHERITED_DEFINITIONS}
               ${MULLE_ATEXIT_DEFINITIONS}
               CACHE INTERNAL "need to cache this"
            )
            break()
         else()
            message( STATUS "${_TMP_MULLE_ATEXIT_DIR}/DependenciesAndLibraries.cmake not found")
         endif()
      endforeach()
      #
      # Search for "objc-loader.inc" in include directory.
      # Disable with: `mulle-sourcetree mark mulle-atexit no-cmakeloader`
      #
      if( NOT NO_INHERIT_OBJC_LOADERS)
         foreach( _TMP_MULLE_ATEXIT_NAME "mulle-atexit")
            set( _TMP_MULLE_ATEXIT_FILE "${_TMP_MULLE_ATEXIT_ROOT}/include/${_TMP_MULLE_ATEXIT_NAME}/MulleObjCLoader+${_TMP_MULLE_ATEXIT_NAME}.h")
            if( EXISTS "${_TMP_MULLE_ATEXIT_FILE}")
               set( INHERITED_OBJC_LOADERS
                  ${INHERITED_OBJC_LOADERS}
                  ${_TMP_MULLE_ATEXIT_FILE}
                  CACHE INTERNAL "need to cache this"
               )
               break()
            endif()
         endforeach()
      endif()
   else()
      message( FATAL_ERROR "MULLE_ATEXIT_LIBRARY was not found")
   endif()
endif()


#
# Generated from sourcetree: mulle-dlfcn;no-all-load,no-import,no-singlephase;
# Disable with: `mulle-sourcetree mark mulle-dlfcn no-link`
#
if( NOT MULLE_DLFCN_LIBRARY)
   find_library( MULLE_DLFCN_LIBRARY NAMES ${CMAKE_STATIC_LIBRARY_PREFIX}mulle-dlfcn${CMAKE_STATIC_LIBRARY_SUFFIX} mulle-dlfcn NO_CMAKE_SYSTEM_PATH)
   message( STATUS "MULLE_DLFCN_LIBRARY is ${MULLE_DLFCN_LIBRARY}")
   #
   # The order looks ascending, but due to the way this file is read
   # it ends up being descending, which is what we need.
   #
   if( MULLE_DLFCN_LIBRARY)
      #
      # Add to MULLE_DLFCN_LIBRARY list.
      # Disable with: `mulle-sourcetree mark mulle-dlfcn no-cmakeadd`
      #
      set( DEPENDENCY_LIBRARIES
         ${DEPENDENCY_LIBRARIES}
         ${MULLE_DLFCN_LIBRARY}
         CACHE INTERNAL "need to cache this"
      )
      #
      # Inherit ObjC loader and link dependency info.
      # Disable with: `mulle-sourcetree mark mulle-dlfcn no-cmakeinherit`
      #
      # // temporarily expand CMAKE_MODULE_PATH
      get_filename_component( _TMP_MULLE_DLFCN_ROOT "${MULLE_DLFCN_LIBRARY}" DIRECTORY)
      get_filename_component( _TMP_MULLE_DLFCN_ROOT "${_TMP_MULLE_DLFCN_ROOT}" DIRECTORY)
      #
      #
      # Search for "DependenciesAndLibraries.cmake" to include.
      # Disable with: `mulle-sourcetree mark mulle-dlfcn no-cmakedependency`
      #
      foreach( _TMP_MULLE_DLFCN_NAME "mulle-dlfcn")
         set( _TMP_MULLE_DLFCN_DIR "${_TMP_MULLE_DLFCN_ROOT}/include/${_TMP_MULLE_DLFCN_NAME}/cmake")
         # use explicit path to avoid "surprises"
         if( EXISTS "${_TMP_MULLE_DLFCN_DIR}/DependenciesAndLibraries.cmake")
            unset( MULLE_DLFCN_DEFINITIONS)
            list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_MULLE_DLFCN_DIR}")
            # we only want top level INHERIT_OBJC_LOADERS, so disable them
            if( NOT NO_INHERIT_OBJC_LOADERS)
               set( NO_INHERIT_OBJC_LOADERS OFF)
            endif()
            list( APPEND _TMP_INHERIT_OBJC_LOADERS ${NO_INHERIT_OBJC_LOADERS})
            set( NO_INHERIT_OBJC_LOADERS ON)
            #
            include( "${_TMP_MULLE_DLFCN_DIR}/DependenciesAndLibraries.cmake")
            #
            list( GET _TMP_INHERIT_OBJC_LOADERS -1 NO_INHERIT_OBJC_LOADERS)
            list( REMOVE_AT _TMP_INHERIT_OBJC_LOADERS -1)
            #
            list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_MULLE_DLFCN_DIR}")
            set( INHERITED_DEFINITIONS
               ${INHERITED_DEFINITIONS}
               ${MULLE_DLFCN_DEFINITIONS}
               CACHE INTERNAL "need to cache this"
            )
            break()
         else()
            message( STATUS "${_TMP_MULLE_DLFCN_DIR}/DependenciesAndLibraries.cmake not found")
         endif()
      endforeach()
   else()
      message( FATAL_ERROR "MULLE_DLFCN_LIBRARY was not found")
   endif()
endif()
