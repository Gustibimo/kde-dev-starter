# CMake generated Testfile for 
# Source directory: /home/safia/kde/src/kde-dev-starter
# Build directory: /home/safia/kde/src/kde-dev-starter/cmake-build-debug
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(appstreamtest "/home/safia/.local/share/JetBrains/Toolbox/apps/CLion/clion-2020.1.2/bin/cmake/linux/bin/cmake" "-DAPPSTREAMCLI=/usr/bin/appstreamcli" "-DINSTALL_FILES=/home/safia/kde/src/kde-dev-starter/cmake-build-debug/install_manifest.txt" "-P" "/usr/share/ECM/kde-modules/appstreamtest.cmake")
set_tests_properties(appstreamtest PROPERTIES  _BACKTRACE_TRIPLES "/usr/share/ECM/kde-modules/KDECMakeSettings.cmake;163;add_test;/usr/share/ECM/kde-modules/KDECMakeSettings.cmake;181;appstreamtest;/usr/share/ECM/kde-modules/KDECMakeSettings.cmake;0;;/home/safia/kde/src/kde-dev-starter/CMakeLists.txt;12;include;/home/safia/kde/src/kde-dev-starter/CMakeLists.txt;0;")
