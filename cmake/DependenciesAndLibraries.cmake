#
# The following includes include definitions generated
# during `mulle-sde update`. Don't edit those files. They are
# overwritten frequently.
#
# === MULLE-SDE START ===

include( _Dependencies)
include( _Libraries)

# === MULLE-SDE END ===
#

#
# If you need more find_library() statements, that you dont want to manage
# with the sourcetree, add them here.
#

# because Linux is broken, we link to MULLE_TESTALLOCATOR here
# so the dependency works out for us
if( MULLE_TEST)
   if( LINUX)
      find_library( MULLE_TESTALLOCATOR NAMES ${CMAKE_STATIC_LIBRARY_PREFIX}mulle-testallocator${CMAKE_STATIC_LIBRARY_SUFFIX} mulle-testallocator NO_CMAKE_SYSTEM_PATH)
      if( MULLE_TESTALLOCATOR)
         #
         # Add to MULLE_CONCURRENT_LIBRARY list.
         # Disable with: `mark no-cmakeadd`
         #
         set( DEPENDENCY_LIBRARIES
            ${DEPENDENCY_LIBRARIES}
            ${MULLE_TESTALLOCATOR}
            CACHE INTERNAL "need to cache this"
         )
      endif()
   endif()
endif()

# Add OS specific dependencies to OS_SPECIFIC_LIBRARIES
# Add all other dependencies (rest) to DEPENDENCIES_LIBRARIES
#
set( STARTUP_LIBRARY_NAME "mulle-objc-runtime-startup")
