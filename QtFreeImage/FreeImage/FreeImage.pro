TEMPLATE = lib
CONFIG +=
QT-= gui core
TARGET=FreeImage

include(../QtFreeImageConfig.pri)
include(../FreeImageToolkit/FreeImageToolkit.pro)
win32: {
    DEFINES+=OPJ_STATIC FREEIMAGE_EXPORTS _CRT_SECURE_NO_DEPRECATE LIBRAW_NODLL
}
unix:!mac: QMAKE_LFLAGS_SHLIB+=-fopenmp
SysRoot =
ExtraLib =
contains(ANDROID_TARGET_ARCH,armeabi-v7a) {
    message($$_PRO_FILE_ : build for v7a)
    SysRoot = $(ANDROID_NDK_ROOT)/platforms/android-$$ANDROID_API_VERSION/arch-arm/
    ExtraLib = $(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/9.0.8/lib/linux/arm/libomp.so
    QMAKE_PRE_LINK += cp $$ExtraLib $$OUT_PWD/../
    #ExtraLib = $$OUT_PWD/android-build/libs/armeabi-v7a/libomp.so
    LIBS+= -L$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/9.0.8/lib/linux/armeabi-v7a/ -lomp \
    $(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/9.0.8/lib/linux/armeabi-v7a/libomp.so
} else: contains(ANDROID_TARGET_ARCH,arm64-v8a) {
    message($$_PRO_FILE_ : build for v8a)
    SysRoot = $(ANDROID_NDK_ROOT)/platforms/android-$$ANDROID_API_VERSION/arch-arm64/
    ExtraLib = $(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/9.0.8/lib/linux/aarch64/libomp.so
    QMAKE_PRE_LINK += cp $$ExtraLib $$OUT_PWD/../
    #ExtraLib = $$OUT_PWD/android-build/libs/arm64-v8a/libomp.so
    LIBS+= -L$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/9.0.8/lib/linux/aarch64/ -lomp \
    $(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/9.0.8/lib/linux/aarch64/libomp.so
}

INCLUDEPATH+= \
    ../../FreeImage/trunk/ \
    ../../FreeImage/trunk/Source/ \
    ../../FreeImage/trunk/Source/Metadata \
    ../../FreeImage/trunk/Source/FreeImageToolkit \
    ../../FreeImage/trunk/Source/LibJPEG \
    ../../FreeImage/trunk/Source/LibPNG \
    ../../FreeImage/trunk/Source/LibTIFF4 \
    ../../FreeImage/trunk/Source/ZLib \
    ../../FreeImage/trunk/Source/LibOpenJPEG \
    ../../FreeImage/trunk/Source/OpenEXR \
    ../../FreeImage/trunk/Source/OpenEXR/Half \
    ../../FreeImage/trunk/Source/OpenEXR/Iex \
    ../../FreeImage/trunk/Source/OpenEXR/IlmImf \
    ../../FreeImage/trunk/Source/OpenEXR/IlmThread \
    ../../FreeImage/trunk/Source/OpenEXR/Imath \
    ../../FreeImage/trunk/Source/OpenEXR/IexMath \
    ../../FreeImage/trunk/Source/LibRawLite \
    ../../FreeImage/trunk/Source/LibRawLite/dcraw \
    ../../FreeImage/trunk/Source/LibRawLite/internal \
    ../../FreeImage/trunk/Source/LibRawLite/libraw \
    ../../FreeImage/trunk/Source/LibRawLite/src \
    ../../FreeImage/trunk/Source/LibWebP \
    ../../FreeImage/trunk/Source/LibJXR \
    ../../FreeImage/trunk/Source/LibJXR/common/include \
    ../../FreeImage/trunk/Source/LibJXR/image/sys \
    ../../FreeImage/trunk/Source/LibJXR/jxrgluelib

SOURCES+= \
    ../../FreeImage/trunk/Source/FreeImage/BitmapAccess.cpp \
    ../../FreeImage/trunk/Source/FreeImage/ColorLookup.cpp \
    ../../FreeImage/trunk/Source/FreeImage/ConversionRGBA16.cpp \
    ../../FreeImage/trunk/Source/FreeImage/ConversionRGBAF.cpp \
    ../../FreeImage/trunk/Source/FreeImage/FreeImage.cpp \
    ../../FreeImage/trunk/Source/FreeImage/FreeImageC.c \
    ../../FreeImage/trunk/Source/FreeImage/FreeImageIO.cpp \
    ../../FreeImage/trunk/Source/FreeImage/GetType.cpp \
    ../../FreeImage/trunk/Source/FreeImage/LFPQuantizer.cpp \
    ../../FreeImage/trunk/Source/FreeImage/MemoryIO.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PixelAccess.cpp \
    ../../FreeImage/trunk/Source/FreeImage/J2KHelper.cpp \
    ../../FreeImage/trunk/Source/FreeImage/MNGHelper.cpp \
    ../../FreeImage/trunk/Source/FreeImage/Plugin.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginBMP.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginCUT.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginDDS.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginEXR.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginG3.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginGIF.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginHDR.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginICO.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginIFF.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginJ2K.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginJNG.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginJP2.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginJPEG.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginJXR.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginKOALA.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginMNG.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginPCD.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginPCX.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginPFM.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginPICT.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginPNG.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginPNM.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginPSD.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginRAS.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginRAW.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginSGI.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginTARGA.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginTIFF.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginWBMP.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginWebP.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginXBM.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PluginXPM.cpp \
    ../../FreeImage/trunk/Source/FreeImage/PSDParser.cpp \
    ../../FreeImage/trunk/Source/FreeImage/TIFFLogLuv.cpp \
    ../../FreeImage/trunk/Source/FreeImage/Conversion.cpp \
    ../../FreeImage/trunk/Source/FreeImage/Conversion16_555.cpp \
    ../../FreeImage/trunk/Source/FreeImage/Conversion16_565.cpp \
    ../../FreeImage/trunk/Source/FreeImage/Conversion24.cpp \
    ../../FreeImage/trunk/Source/FreeImage/Conversion32.cpp \
    ../../FreeImage/trunk/Source/FreeImage/Conversion4.cpp \
    ../../FreeImage/trunk/Source/FreeImage/Conversion8.cpp \
    ../../FreeImage/trunk/Source/FreeImage/ConversionFloat.cpp \
    ../../FreeImage/trunk/Source/FreeImage/ConversionRGB16.cpp \
    ../../FreeImage/trunk/Source/FreeImage/ConversionRGBF.cpp \
    ../../FreeImage/trunk/Source/FreeImage/ConversionType.cpp \
    ../../FreeImage/trunk/Source/FreeImage/ConversionUINT16.cpp \
    ../../FreeImage/trunk/Source/FreeImage/Halftoning.cpp \
    ../../FreeImage/trunk/Source/FreeImage/tmoColorConvert.cpp \
    ../../FreeImage/trunk/Source/FreeImage/tmoDrago03.cpp \
    ../../FreeImage/trunk/Source/FreeImage/tmoFattal02.cpp \
    ../../FreeImage/trunk/Source/FreeImage/tmoReinhard05.cpp \
    ../../FreeImage/trunk/Source/FreeImage/ToneMapping.cpp \
    ../../FreeImage/trunk/Source/FreeImage/NNQuantizer.cpp \
    ../../FreeImage/trunk/Source/FreeImage/WuQuantizer.cpp \
    ../../FreeImage/trunk/Source/FreeImage/CacheFile.cpp \
    ../../FreeImage/trunk/Source/FreeImage/MultiPage.cpp \
    ../../FreeImage/trunk/Source/FreeImage/ZLibInterface.cpp

HEADERS+= \
    ../../FreeImage/trunk/Source/CacheFile.h \
    ../../FreeImage/trunk/Source/FreeImage/J2KHelper.h \
    ../../FreeImage/trunk/Source/FreeImage/PSDParser.h \
    ../../FreeImage/trunk/Source/FreeImage.h \
    ../../FreeImage/trunk/Source/FreeImageIO.h

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../MetaData/release/ -lMetaData
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../MetaData/debug/ -lMetaData
else:unix: LIBS += -L$$OUT_PWD/../MetaData/ -lMetaData

INCLUDEPATH += $$PWD/../../FreeImage/trunk/Source/Metadata
DEPENDPATH += $$PWD/../../FreeImage/trunk/Source/Metadata

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../MetaData/release/libMetaData.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../MetaData/debug/libMetaData.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../MetaData/release/MetaData.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../MetaData/debug/MetaData.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../MetaData/libMetaData.a

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../LibOpenJPEG/release/ -lLibOpenJPEG
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../LibOpenJPEG/debug/ -lLibOpenJPEG
else:unix: LIBS += -L$$OUT_PWD/../LibOpenJPEG/ -lLibOpenJPEG

INCLUDEPATH += $$PWD/../../FreeImage/trunk/Source/LibOpenJPEG
DEPENDPATH += $$PWD/../../FreeImage/trunk/Source/LibOpenJPEG

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../LibOpenJPEG/release/libLibOpenJPEG.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../LibOpenJPEG/debug/libLibOpenJPEG.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../LibOpenJPEG/release/LibOpenJPEG.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../LibOpenJPEG/debug/LibOpenJPEG.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../LibOpenJPEG/libLibOpenJPEG.a

#win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../FreeImageToolkit/release/ -lFreeImageToolkit
#else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../FreeImageToolkit/debug/ -lFreeImageToolkit
#else:unix: LIBS += -L$$OUT_PWD/../FreeImageToolkit/ -lFreeImageToolkit

INCLUDEPATH += $$PWD/../../FreeImage/trunk/Source/FreeImageToolkit
DEPENDPATH += $$PWD/../../FreeImage/trunk/Source/FreeImageToolkit

#win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../FreeImageToolkit/release/libFreeImageToolkit.a
#else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../FreeImageToolkit/debug/libFreeImageToolkit.a
#else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../FreeImageToolkit/release/FreeImageToolkit.lib
#else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../FreeImageToolkit/debug/FreeImageToolkit.lib
#else:unix: PRE_TARGETDEPS += $$OUT_PWD/../FreeImageToolkit/libFreeImageToolkit.a

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../OpenEXR/release/ -lOpenEXR
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../OpenEXR/debug/ -lOpenEXR
else:unix: LIBS += -L$$OUT_PWD/../OpenEXR/ -lOpenEXR

INCLUDEPATH += $$PWD/../../FreeImage/trunk/Source/OpenEXR
DEPENDPATH += $$PWD/../../FreeImage/trunk/Source/OpenEXR

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../OpenEXR/release/libOpenEXR.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../OpenEXR/debug/libOpenEXR.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../OpenEXR/release/OpenEXR.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../OpenEXR/debug/OpenEXR.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../OpenEXR/libOpenEXR.a

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../LibTIFF4/release/ -lLibTIFF4
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../LibTIFF4/debug/ -lLibTIFF4
else:unix: LIBS += -L$$OUT_PWD/../LibTIFF4/ -lLibTIFF4

INCLUDEPATH += $$PWD/../../FreeImage/trunk/Source/LibTIFF4
DEPENDPATH += $$PWD/../../FreeImage/trunk/Source/LibTIFF4

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../LibTIFF4/release/libLibTIFF4.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../LibTIFF4/debug/libLibTIFF4.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../LibTIFF4/release/LibTIFF4.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../LibTIFF4/debug/LibTIFF4.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../LibTIFF4/libLibTIFF4.a

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../LibJXR/release/ -lLibJXR
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../LibJXR/debug/ -lLibJXR
else:unix: LIBS += -L$$OUT_PWD/../LibJXR/ -lLibJXR

INCLUDEPATH += $$PWD/../../FreeImage/trunk/Source/LibJXR
DEPENDPATH += $$PWD/../../FreeImage/trunk/Source/LibJXR

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../LibJXR/release/libLibJXR.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../LibJXR/debug/libLibJXR.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../LibJXR/release/LibJXR.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../LibJXR/debug/LibJXR.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../LibJXR/libLibJXR.a

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../LibJpeg/release/ -lLibJpeg
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../LibJpeg/debug/ -lLibJpeg
else:unix: LIBS += -L$$OUT_PWD/../LibJpeg/ -lLibJpeg

INCLUDEPATH += $$PWD/../../FreeImage/trunk/Source/LibJPEG
DEPENDPATH += $$PWD/../../FreeImage/trunk/Source/LibJPEG

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../LibJpeg/release/libLibJpeg.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../LibJpeg/debug/libLibJpeg.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../LibJpeg/release/LibJpeg.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../LibJpeg/debug/LibJpeg.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../LibJpeg/libLibJpeg.a

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../LibPNG/release/ -lLibPNG
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../LibPNG/debug/ -lLibPNG
else:unix: LIBS += -L$$OUT_PWD/../LibPNG/ -lLibPNG

INCLUDEPATH += $$PWD/../../FreeImage/trunk/Source/LibPNG
DEPENDPATH += $$PWD/../../FreeImage/trunk/Source/LibPNG

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../LibPNG/release/libLibPNG.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../LibPNG/debug/libLibPNG.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../LibPNG/release/LibPNG.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../LibPNG/debug/LibPNG.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../LibPNG/libLibPNG.a

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../LibRawLite/release/ -lLibRawLite
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../LibRawLite/debug/ -lLibRawLite
else:unix: LIBS += -L$$OUT_PWD/../LibRawLite/ -lLibRawLite

INCLUDEPATH += $$PWD/../../FreeImage/trunk/Source/LibRawLite
DEPENDPATH += $$PWD/../../FreeImage/trunk/Source/LibRawLite

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../LibRawLite/release/libLibRawLite.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../LibRawLite/debug/libLibRawLite.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../LibRawLite/release/LibRawLite.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../LibRawLite/debug/LibRawLite.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../LibRawLite/libLibRawLite.a

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../LibWebP/release/ -lLibWebP
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../LibWebP/debug/ -lLibWebP
else:unix: LIBS += -L$$OUT_PWD/../LibWebP/ -lLibWebP

INCLUDEPATH += $$PWD/../../FreeImage/trunk/Source/LibWebP/src
DEPENDPATH += $$PWD/../../FreeImage/trunk/Source/LibWebP/src

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../LibWebP/release/libLibWebP.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../LibWebP/debug/libLibWebP.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../LibWebP/release/LibWebP.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../LibWebP/debug/LibWebP.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../LibWebP/libLibWebP.a

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../ZLib/release/ -lZLib
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../ZLib/debug/ -lZLib
else:unix: LIBS += -L$$OUT_PWD/../ZLib/ -lZLib

INCLUDEPATH += $$PWD/../../FreeImage/trunk/Source/ZLib
DEPENDPATH += $$PWD/../../FreeImage/trunk/Source/ZLib

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../ZLib/release/libZLib.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../ZLib/debug/libZLib.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../ZLib/release/ZLib.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../ZLib/debug/ZLib.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../ZLib/libZLib.a
