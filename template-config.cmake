
# This config script tries to locate a project in its source tree.
# For installed version, see deploy/template-config.cmake


# Macro for loading a target configuration if it exists
macro(include_config_script PREFIX FILENAME)
    set(filename "${CMAKE_CURRENT_LIST_DIR}/${PREFIX}/${FILENAME}")
    if(EXISTS "${filename}")
        include("${filename}")
    endif()
endmacro()


# Try common build locations
set(prefix "build/source")
include("${CMAKE_CURRENT_LIST_DIR}/template-files.cmake")

set(prefix "build-debug/source")
include("${CMAKE_CURRENT_LIST_DIR}/template-files.cmake")
