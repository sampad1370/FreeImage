set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

find_package(QT NAMES Qt5 Qt6 REQUIRED COMPONENTS Core)
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Gui Qml Quick QuickControls2)
if(ANDROID)
    find_package(Qt${QT_VERSION_MAJOR} OPTIONAL_COMPONENTS AndroidExtras)
endif()
set(QT_QML_OUTPUT_DIRECTORY  ${CMAKE_BINARY_DIR})
add_executable(QMLFreeImage WIN32 MACOSX_BUNDLE
    MainWindow.cpp MainWindow.h
    main.cpp
    qml.qrc
    main.qml
)
# add_qml_module(QMLFreeImage
#     URI QMLFreeImage
#     VERSION ${PROJECT_VERSION}
#     QML_FILES
#         main.qml
#     NO_RESOURCE_TARGET_PATH
# )

# Avoid collision between executable name and QML module directory (QTBUG-98568).
if(NOT WIN32 AND NOT APPLE)
    set_property(TARGET QMLFreeImage PROPERTY OUTPUT_NAME QMLFreeImage_app)
endif()

target_include_directories(QMLFreeImage PRIVATE
    ../../../FreeImage/trunk/Source
)

target_link_libraries(QMLFreeImage PRIVATE
    Qt::Core
    Qt::Gui
    Qt::Qml
    Qt::Quick
    Qt::QuickControls2
)

if(ANDROID)
    target_link_libraries(QMLFreeImage PUBLIC
	Qt::AndroidExtras
    )
endif()

target_link_libraries(QMLFreeImage PUBLIC FreeImage)

install(TARGETS QMLFreeImage
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

# qt_generate_deploy_qml_app_script(
#     TARGET QMLFreeImage
#     FILENAME_VARIABLE deploy_script
#     NO_UNSUPPORTED_PLATFORM_ERROR
#     DEPLOY_USER_QML_MODULES_ON_UNSUPPORTED_PLATFORM
#     MACOS_BUNDLE_POST_BUILD
# )
# install(SCRIPT ${deploy_script})
install(
    IMPORTED_RUNTIME_ARTIFACTS QMLFreeImage
    DESTINATION ${CMAKE_BINARY_DIR}/bin
)
set_target_properties(QMLFreeImage PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)
# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
if(QT_VERSION_MAJOR LESS 6)
    set(BUNDLE_ID_OPTION MACOSX_BUNDLE_GUI_IDENTIFIER com.example.testtemp)
endif()
set_target_properties(QMLFreeImage PROPERTIES
    ${BUNDLE_ID_OPTION}
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

install(TARGETS QMLFreeImage
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
