## # vcpkg_copy_tool_dependencies
##
## Copy all DLL dependencies of built tools into the tool folder.
##
## ## Usage
## ```cmake
## vcpkg_copy_tool_dependencies(<${CURRENT_PACKAGES_DIR}/tools/${PORT}>)
## ```
## ## Parameters
## The path to the directory containing the tools.
##
## ## Notes
## This command should always be called by portfiles after they have finished rearranging the binary output, if they have any tools.
##
## ## Examples
##
## * [glib](https://github.com/Microsoft/vcpkg/blob/master/ports/glib/portfile.cmake)
## * [fltk](https://github.com/Microsoft/vcpkg/blob/master/ports/fltk/portfile.cmake)
##
## ## OR Usage
## ```cmake
## vcpkg_copy_tool_dependencies(
##     TOOL_DIR <${CURRENT_PACKAGES_DIR}/tools/${PORT}>
##     [OUTPUT_DIR <${CURRENT_PACKAGES_DIR}/tools/${PORT}>]
##     [SEARCH_DIRS <${CURRENT_PACKAGES_DIR}/bin ${CURRENT_INSTALLED_DIR}/bin>]
##     [DEBUG])
## )
## ```
## ## Parameters
## ### TOOL_DIR
## The path to the directory containing the tools.
##
## ### OUTPUT_DIR
## Optional parameter which specifies the copy path of the dependent library files.
## If not specified, it will be output to the TOOL_DIR
##
## ### SEARCH_DIRS
## The directory to search the dependency library
## The default value is ${CURRENT_PACKAGES_DIR}/bin ${CURRENT_INSTALLED_DIR}/bin
## When the DEBUG value is set, The default value is ${CURRENT_PACKAGES_DIR}/debug/bin ${CURRENT_INSTALLED_DIR}/debug/bin
##
## ### DEBUG
## Flag as a debug library to switch the default search path
##
##
## ## Examples
##
## *
##  vcpkg_copy_tool_dependencies(${CURRENT_PACKAGES_DIR}/tools/${PORT})
##  vcpkg_copy_tool_dependencies(
##      TOOL_DIR   ${CURRENT_PACKAGES_DIR}/tools/${PORT}/osgPlugins-${OSG_VER}
##      OUTPUT_DIR ${CURRENT_PACKAGES_DIR}/tools/${PORT}
##  )
## 
##  vcpkg_copy_tool_dependencies(
##      TOOL_DIR   ${CURRENT_PACKAGES_DIR}/debug/tools/${PORT}
##      DEBUG
##  )
## 
##  vcpkg_copy_tool_dependencies(
##      TOOL_DIR   ${CURRENT_PACKAGES_DIR}/debug/tools/${PORT}/osgPlugins-${OSG_VER}
##      OUTPUT_DIR ${CURRENT_PACKAGES_DIR}/debug/tools/${PORT}
##      DEBUG
##  )
function(vcpkg_copy_tool_dependencies)
    find_program(PS_EXE powershell PATHS ${DOWNLOADS}/tool)
    if (PS_EXE-NOTFOUND)
        message(FATAL_ERROR "Could not find powershell in vcpkg tools, please open an issue to report this.")
    endif()
    cmake_parse_arguments(_ctdb "" "TOOL_DIR" "OUTPUT_DIR;SEARCH_DIRS;DEBUG" ${ARGN})
    if(NOT DEFINED _ctdb_OUTPUT_DIR)
        if(${ARGC} GREATER 0)
            set(_ctdb_TOOL_DIR ${ARGV0})
        else()
            message(FATAL_ERROR "vcpkg_copy_tool_dependencies: not defined TOOL_DIR")
        endif()
    endif()

    if(NOT DEFINED _ctdb_OUTPUT_DIR)
        set(_ctdb_OUTPUT_DIR ${_ctdb_TOOL_DIR})
    endif()

    if(NOT DEFINED _ctdb_SEARCH_DIRS)
        if(NOT DEFINED _ctdb_DEBUG)
            list(APPEND _ctdb_SEARCH_DIRS ${CURRENT_PACKAGES_DIR}/bin)
            list(APPEND _ctdb_SEARCH_DIRS ${CURRENT_INSTALLED_DIR}/bin)
        else()
            list(APPEND _ctdb_SEARCH_DIRS ${CURRENT_PACKAGES_DIR}/debug/bin)
            list(APPEND _ctdb_SEARCH_DIRS ${CURRENT_INSTALLED_DIR}/debug/bin)
        endif()
    endif()

    macro(search_for_dependencies PATH_TO_SEARCH)
        file(GLOB TOOLS ${_ctdb_TOOL_DIR}/*.exe ${_ctdb_TOOL_DIR}/*.dll)
        foreach(TOOL ${TOOLS})
            vcpkg_execute_required_process(
                COMMAND ${PS_EXE} -noprofile -executionpolicy Bypass -nologo
                    -file ${SCRIPTS}/buildsystems/msbuild/applocal.ps1
                    -targetBinary ${TOOL}
                    -installedDir ${PATH_TO_SEARCH}
                    -outputDir    ${_ctdb_OUTPUT_DIR}
                WORKING_DIRECTORY ${VCPKG_ROOT_DIR}
                LOGNAME copy-tool-dependencies
            )
        endforeach()
    endmacro()

    foreach(SEARCH_DIR ${_ctdb_SEARCH_DIRS})
        search_for_dependencies(${SEARCH_DIR})
    endforeach()
endfunction()