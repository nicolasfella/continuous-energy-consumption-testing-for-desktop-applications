cmake_minimum_required(VERSION 3.16)
project(emptytests)

find_package(ECM REQUIRED)
find_package(Qt5Test REQUIRED)

set(CMAKE_MODULE_PATH ${ECM_MODULE_PATH})

include(ECMAddTests)
include(KDEInstallDirs)
include(KDECMakeSettings)

foreach(i RANGE 1 73)
    configure_file(test.cpp.in ${CMAKE_BINARY_DIR}/test${i}.cpp)
    ecm_add_tests(test${i}.cpp LINK_LIBRARIES Qt5::Test)
endforeach()
