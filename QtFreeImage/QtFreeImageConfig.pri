outDir=$$OUT_PWD/
ProFilePwd=$$_PRO_FILE_PWD_

CONFIG += c++11
unix: {
    QMAKE_CXXFLAGS += -std=c++11
    DEFINES+=__ANSI__
    QMAKE_CXXFLAGS += -std=gnu++11
}
win32: {
    outDir~= s,/,\\,g
    ProFilePwd~= s,/,\\,g
    DEFINES-=UNICODE
    #message($$outDir)
    #QMAKE_PRE_LINK=msbuild $$_PRO_FILE_PWD_\FreeImage\FreeImage.vs2022.sln /p:Configuration=Debug /p:OutDir=$$outDir/

    #QMAKE_POST_LINK=copy $$shell_quote($$ProFilePwd\FreeImage\Dist\x64\FreeImaged.dll)  $$shell_quote($$outDir\..\..\debug\FreeImaged.dll)
    #QMAKE_POST_LINK=copy $$shell_quote($$outDir\FreeImaged.dll) $$shell_quote($$ProFilePwd\FreeImage\Dist\x64\FreeImaged.dll) && \
    #copy $$shell_quote($$outDir\FreeImaged.lib) $$shell_quote($$ProFilePwd\FreeImage\Dist\x64\FreeImaged.lib) && \
    #copy $$shell_quote($$outDir\FreeImaged.pdb) $$shell_quote($$ProFilePwd\FreeImage\Dist\x64\FreeImaged.pdb)
} else:android: {

    ANDROID_MIN_SDK_VERSION=28
    ANDROID_API_VERSION=ANDROID_MIN_SDK_VERSION

    SysRoot =
    contains(ANDROID_TARGET_ARCH,armeabi-v7a) {
        message($$_PRO_FILE_ : build for v7a)
        SysRoot = ${ANDROID_NDK_ROOT}/platforms/android-$$ANDROID_API_VERSION/arch-arm/
        INCLUDEPATH+= $(ANDROID_NDK_ROOT)/sysroot/usr/include/arm-linux-androideabi
    } else: contains(ANDROID_TARGET_ARCH,arm64-v8a) {
        message($$_PRO_FILE_ : build for v8a)
        SysRoot = ${ANDROID_NDK_ROOT}/platforms/android-$$ANDROID_API_VERSION/arch-arm64/
        INCLUDEPATH+= $(ANDROID_NDK_ROOT)/sysroot/usr/include/aarch64-linux-android
    }
    INCLUDEPATH+= $(ANDROID_NDK_ROOT)/sources/cxx-stl/llvm-libc++/include
    #INCLUDEPATH+= $(ANDROID_NDK_ROOT)/sources/cxx-stl/llvm-libc++/libs/arm64-v8a/include
    INCLUDEPATH+= $(ANDROID_NDK_ROOT)/sources/cxx-stl/llvm-libc++/include/backward
    #message($$_PRO_FILE_ : $$CONFIG)
    INCLUDEPATH+= $(ANDROID_NDK_ROOT)/sysroot/usr/include

    Flags = --sysroot $$SysRoot -D__ANDROID_API__=$$ANDROID_MIN_SDK_VERSION -D__ANSI__ -DDISABLE_PERF_MEASUREMENT
    QMAKE_CFLAGS+= $$Flags -ffunction-sections -funwind-tables
    QMAKE_CFLAGS+= -fstack-protector-strong -no-canonical-prefixes
    QMAKE_CFLAGS+= -Wa,--noexecstack -Wformat -Werror=format-security
    QMAKE_CFLAGS+= -fopenmp -fPIE -Wno-attributes -ffast-math -fno-strict-aliasing

    QMAKE_CXXFLAGS += $$Flags -std=c++11 -ffunction-sections -funwind-tables
    QMAKE_CXXFLAGS += -fstack-protector-strong -no-canonical-prefixes
    QMAKE_CXXFLAGS += -Wa,--noexecstack -Wformat -Werror=format-security
    QMAKE_CXXFLAGS += -fopenmp -fPIE -Wno-attributes -ffast-math -fno-strict-aliasing

    #QMAKE_LFLAGS_SHLIB -= -target armv7a-linux-androideabi21
    #QMAKE_LFLAGS_PLUGIN -= -target armv7a-linux-androideabi21
    #message($$QMAKE_LFLAGS_SHLIB)

#    QMAKE_PRE_LINK=make -C $$ProFilePwd/trunk/ \
#    --makefile=$$ProFilePwd/trunk/Makefile.android
} else:unix: {
#    QMAKE_PRE_LINK=make -C $$ProFilePwd/trunk/ \
#    --makefile=$$ProFilePwd/trunk/Makefile
}

target.path = $$OUT_PWD
INSTALLS += target
