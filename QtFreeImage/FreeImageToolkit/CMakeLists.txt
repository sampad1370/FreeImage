cmake_minimum_required(VERSION 3.16)
project(FreeImageToolkit VERSION 1.0 LANGUAGES C CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

find_package(QT NAMES Qt5 Qt6 REQUIRED COMPONENTS Core)
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Gui)

qt_standard_project_setup()

qt_add_executable(FreeImageToolkit WIN32 MACOSX_BUNDLE
    ../../FreeImage/trunk/Source/FreeImageToolkit/BSplineRotate.cpp
    ../../FreeImage/trunk/Source/FreeImageToolkit/Background.cpp
    ../../FreeImage/trunk/Source/FreeImageToolkit/Channels.cpp
    ../../FreeImage/trunk/Source/FreeImageToolkit/ClassicRotate.cpp
    ../../FreeImage/trunk/Source/FreeImageToolkit/Colors.cpp
    ../../FreeImage/trunk/Source/FreeImageToolkit/CopyPaste.cpp
    ../../FreeImage/trunk/Source/FreeImageToolkit/Display.cpp
    ../../FreeImage/trunk/Source/FreeImageToolkit/Filters.h
    ../../FreeImage/trunk/Source/FreeImageToolkit/Flip.cpp
    ../../FreeImage/trunk/Source/FreeImageToolkit/JPEGTransform.cpp
    ../../FreeImage/trunk/Source/FreeImageToolkit/MultigridPoissonSolver.cpp
    ../../FreeImage/trunk/Source/FreeImageToolkit/Rescale.cpp
    ../../FreeImage/trunk/Source/FreeImageToolkit/Resize.cpp ../../FreeImage/trunk/Source/FreeImageToolkit/Resize.h
)
target_include_directories(FreeImageToolkit PRIVATE
    ../../FreeImage/trunk
    ../../FreeImage/trunk/Source
    ../../FreeImage/trunk/Source/Metadata
)

target_link_libraries(FreeImageToolkit PRIVATE
    Qt::Core
    Qt::Gui
)

install(TARGETS FreeImageToolkit
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET FreeImageToolkit
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
