cmake_minimum_required(VERSION 3.16)

project(FullScreenTest VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 COMPONENTS Quick REQUIRED)

qt_add_executable(appFullScreenTest
    main.cpp
)

qt_add_qml_module(appFullScreenTest
    URI FullScreenTest
    VERSION 1.0
    QML_FILES main.qml
)

set_target_properties(appFullScreenTest PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appFullScreenTest
    PRIVATE Qt6::Quick)

install(TARGETS appFullScreenTest
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
