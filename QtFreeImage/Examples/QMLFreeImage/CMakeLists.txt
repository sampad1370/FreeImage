qt_add_executable(QMLFreeImage WIN32 MACOSX_BUNDLE
    MainWindow.cpp MainWindow.h
    main.cpp
)
qt_add_qml_module(QMLFreeImage
    URI QMLFreeImage
    VERSION ${PROJECT_VERSION}
    QML_FILES
        main.qml
    NO_RESOURCE_TARGET_PATH
)

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
    target_link_libraries(QMLFreeImage PRIVATE
        Qt::AndroidExtras
    )
endif()

if(WIN32 AND CONFIG(release,debug OR release))
    target_link_libraries(QMLFreeImage PRIVATE
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../../FreeImage/release/
        FreeImage
    )
endif()

if((NOT (WIN32 AND CONFIG(release,debug OR release))) AND (WIN32 AND CONFIG(debug,debug OR release)))
    target_link_libraries(QMLFreeImage PRIVATE
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../../FreeImage/debug/
        FreeImage
    )
endif()

if(((NOT (WIN32 AND CONFIG(release,debug OR release))) AND (NOT (WIN32 AND CONFIG(debug,debug OR release)))) AND (UNIX AND NOT ANDROID))
    target_link_libraries(QMLFreeImage PRIVATE
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../../FreeImage/
        FreeImage
    )
endif()

if((((NOT (WIN32 AND CONFIG(release,debug OR release))) AND (NOT (WIN32 AND CONFIG(debug,debug OR release)))) AND (NOT (UNIX AND NOT ANDROID))) AND (ANDROID AND ANDROID_TARGET_ARCH___contains___armeabi-v7a))
    target_link_libraries(QMLFreeImage PRIVATE
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../../FreeImage/
        FreeImage_armeabi-v7a
    )
endif()

if(((((NOT (WIN32 AND CONFIG(release,debug OR release))) AND (NOT (WIN32 AND CONFIG(debug,debug OR release)))) AND (NOT (UNIX AND NOT ANDROID))) AND (NOT (ANDROID AND ANDROID_TARGET_ARCH___contains___armeabi-v7a))) AND (ANDROID AND ANDROID_TARGET_ARCH___contains___arm64-v8a))
    target_link_libraries(QMLFreeImage PRIVATE
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../../FreeImage/
        FreeImage_arm64-v8a
    )
endif()

install(TARGETS QMLFreeImage
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_qml_app_script(
    TARGET QMLFreeImage
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
    DEPLOY_USER_QML_MODULES_ON_UNSUPPORTED_PLATFORM
    MACOS_BUNDLE_POST_BUILD
)
install(SCRIPT ${deploy_script})
