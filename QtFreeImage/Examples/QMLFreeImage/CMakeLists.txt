set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(AppName "QMLFreeImage_app")
if(EMSCRIPTEN)
    list(APPEND CMAKE_FIND_ROOT_PATH ${CMAKE_PREFIX_PATH})
    set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE BOTH)
endif()

find_package(QT NAMES Qt5 Qt6 REQUIRED COMPONENTS Core)
if(${QT_VERSION_MAJOR} LESS 6)
    set(OtherQtModule QmlImportScanner)
endif()
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Core Gui Qml Quick QuickControls2 ${OtherQtModule})

if(${QT_VERSION_MAJOR} GREATER 6)
    qt_standard_project_setup(REQUIRES 6.9)
endif()

if(ANDROID)
    find_package(Qt${QT_VERSION_MAJOR} OPTIONAL_COMPONENTS AndroidExtras)
endif()
set(QT_QML_OUTPUT_DIRECTORY  ${CMAKE_BINARY_DIR})
if(${QT_VERSION_MAJOR} LESS 6)
    macro(qt_add_executable)
        add_executable(${ARGV})
    endmacro()
endif()
qt_add_executable(QMLFreeImage WIN32 MACOSX_BUNDLE
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
    set_property(TARGET QMLFreeImage PROPERTY OUTPUT_NAME ${AppName})
    # if(EMSCRIPTEN)
    #     option(UseCustomWasmLoader "Use Custom index.html for wasm loader" ON)
    #     option(UseWasmOptimizerForSize "Use Wasm optimization for output file" Off)
    #     if(EMSCRIPTEN_VERSION VERSION_LESS_EQUAL "3.1.0")
    #         set(CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS} "--bind -s FETCH=1 -s ALLOW_MEMORY_GROWTH=1")
    #     endif()
    #     if(UseCustomWasmLoader)
    #         set_target_properties(QMLFreeImage PROPERTIES SUFFIX ".js"
    #                                 LINK_FLAGS "--shell-file ${CMAKE_SOURCE_DIR}/index.html")
    #     else()
    #         set_target_properties(QMLFreeImage PROPERTIES
    #                 OUTPUT_NAME ${AppName}
    #                 SUFFIX ".html"
    #             )
    #     endif()

    #     set_target_properties(QMLFreeImage PROPERTIES
    #             LINK_FLAGS "-s WASM=1 \
    #                         -s TOTAL_MEMORY=4GB \
    #                         -s EXPORTED_RUNTIME_METHODS=['specialHTMLTargets','callMain','ccall','cwrap','UTF8ToString','stringToUTF8','addFunction','stringToUTF16','FS'] \
    #                         -s NO_EXIT_RUNTIME=1 \
    #                         -s ERROR_ON_UNDEFINED_SYMBOLS=0 \
    #                         -s ALLOW_MEMORY_GROWTH=1\
    #                         ${LinkFlags}"
    #         )
    #     if(UseWasmOptimizerForSize)
    #         set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -O2")
    #     else()
    #         set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -O1")
    #     endif()
    #     target_compile_options(QMLFreeImage PRIVATE
    #         -fexceptions  # Enable C++ exceptions
    #     )

    #     if(EMSCRIPTEN_VERSION VERSION_GREATER "3.1.0")
    #         set(OtherLinkOptions "-s ERROR_ON_UNDEFINED_SYMBOLS=0 -s MAXIMUM_MEMORY=4GB "
    #         "SHELL:-Wl,--allow-multiple-definition"
    #         "-s ALLOW_MEMORY_GROWTH=1"
    #         "--bind"
    #         "SHELL:-s ASSERTIONS=2"
    #         "SHELL:-s MODULARIZE=1"
    #         "SHELL:-s EXPORT_NAME=${AppName}"
    #         "SHELL:-s STACK_SIZE=5MB"
    #         "SHELL:-s INITIAL_MEMORY=512MB"
    #     )
    #     else()
    #         set(OtherLinkOptions
    #             "SHELL:-s ALLOW_MEMORY_GROWTH=1"
    #             "SHELL:-s TOTAL_MEMORY=512MB")
    #     endif()

    #     target_link_options(QMLFreeImage PRIVATE
    #         "SHELL:-s EXIT_RUNTIME=1"
    #         "SHELL:-s ASYNCIFY=1"
    #         ${OtherLinkOptions}
    #     )

    # endif(EMSCRIPTEN)

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

qt_import_qml_plugins(QMLFreeImage)

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
