cmake_minimum_required(VERSION 3.16)
project(QtFreeImage VERSION 1.0 LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

find_package(QT NAMES Qt5 Qt6 REQUIRED COMPONENTS Core)
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Gui Qml Quick QuickControls2)
find_package(Qt${QT_VERSION_MAJOR} OPTIONAL_COMPONENTS AndroidExtras)

#qt_standard_project_setup()


add_subdirectory(LibPNG)
add_subdirectory(Examples)
add_subdirectory(LibRawLite)
add_subdirectory(FreeImage)
add_subdirectory(FreeImageToolkit)
add_subdirectory(MetaData)
add_subdirectory(LibJpeg)
add_subdirectory(LibJXR)
add_subdirectory(LibTIFF4)
add_subdirectory(ZLib)
add_subdirectory(LibOpenJPEG)
add_subdirectory(LibWebP)
add_subdirectory(OpenEXR)
