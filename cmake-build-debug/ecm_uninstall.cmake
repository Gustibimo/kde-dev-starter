if(NOT EXISTS "/home/safia/kde/src/kde-dev-starter/cmake-build-debug/install_manifest.txt")
    message(FATAL_ERROR "Cannot find install manifest: /home/safia/kde/src/kde-dev-starter/cmake-build-debug/install_manifest.txt")
endif()

file(READ "/home/safia/kde/src/kde-dev-starter/cmake-build-debug/install_manifest.txt" files)
string(REGEX REPLACE "\n" ";" files "${files}")
foreach(file ${files})
    message(STATUS "Uninstalling $ENV{DESTDIR}${file}")
    if(IS_SYMLINK "$ENV{DESTDIR}${file}" OR EXISTS "$ENV{DESTDIR}${file}")
        exec_program(
            "/home/safia/.local/share/JetBrains/Toolbox/apps/CLion/clion-2020.1.2/bin/cmake/linux/bin/cmake" ARGS "-E remove \"$ENV{DESTDIR}${file}\""
            OUTPUT_VARIABLE rm_out
            RETURN_VALUE rm_retval
            )
        if(NOT "${rm_retval}" STREQUAL 0)
            message(FATAL_ERROR "Problem when removing $ENV{DESTDIR}${file}")
        endif()
    else()
        message(STATUS "File $ENV{DESTDIR}${file} does not exist.")
    endif()
endforeach()
