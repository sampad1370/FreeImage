TEMPLATE = app

QT += quick quickcontrols2 qml

android: {
    QT+=androidextras

    SysRoot =
    ExtraLib =
    contains(ANDROID_TARGET_ARCH,armeabi-v7a) {
        message($$_PRO_FILE_ : build for v7a)
        SysRoot = $(ANDROID_NDK_ROOT)/platforms/android-$$ANDROID_API_VERSION/arch-arm/
        ExtraLib = $(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/9.0.8/lib/linux/arm/libomp.so
    } else: contains(ANDROID_TARGET_ARCH,arm64-v8a) {
        message($$_PRO_FILE_ : build for v8a)
        SysRoot = $(ANDROID_NDK_ROOT)/platforms/android-$$ANDROID_API_VERSION/arch-arm64/
        ExtraLib = $(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/9.0.8/lib/linux/aarch64/libomp.so
    }
    message($$OUT_PWD)
    #ANDROID_LIB_DEPENDENCIES+= $$ExtraLib
    ANDROID_EXTRA_LIBS+= $$OUT_PWD/../../libomp.so
}

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        MainWindow.cpp \
        main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../../FreeImage/release/ -lFreeImage
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../FreeImage/debug/ -lFreeImage
else:unix:!android: LIBS += -L$$OUT_PWD/../../FreeImage/ -lFreeImage
else:android:contains(ANDROID_TARGET_ARCH,armeabi-v7a): LIBS += -L$$OUT_PWD/../../FreeImage/ -lFreeImage_armeabi-v7a
else:android:contains(ANDROID_TARGET_ARCH,arm64-v8a): LIBS += -L$$OUT_PWD/../../FreeImage/ -lFreeImage_arm64-v8a

INCLUDEPATH += $$PWD/../../../FreeImage/trunk/Source
DEPENDPATH += $$PWD/../../../FreeImage/trunk/Source

HEADERS += \
    MainWindow.h

DISTFILES += \
    android/AndroidManifest.xml \
    android/build.gradle \
    android/gradle.properties \
    android/gradle/wrapper/gradle-wrapper.jar \
    android/gradle/wrapper/gradle-wrapper.properties \
    android/gradlew \
    android/gradlew.bat \
    android/res/values/libs.xml

ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android
