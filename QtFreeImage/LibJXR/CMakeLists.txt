set(CMAKE_CXX_STANDARD 11)
add_library(LibJXR STATIC
    ../../FreeImage/trunk/Source/LibJXR/common/include/guiddef.h
    ../../FreeImage/trunk/Source/LibJXR/common/include/wmsal.h
    ../../FreeImage/trunk/Source/LibJXR/common/include/wmspecstring.h
    ../../FreeImage/trunk/Source/LibJXR/common/include/wmspecstrings_adt.h
    ../../FreeImage/trunk/Source/LibJXR/common/include/wmspecstrings_strict.h
    ../../FreeImage/trunk/Source/LibJXR/common/include/wmspecstrings_undef.h
    ../../FreeImage/trunk/Source/LibJXR/image/decode/JXRTranscode.c
    ../../FreeImage/trunk/Source/LibJXR/image/decode/decode.c ../../FreeImage/trunk/Source/LibJXR/image/decode/decode.h
    ../../FreeImage/trunk/Source/LibJXR/image/decode/postprocess.c
    ../../FreeImage/trunk/Source/LibJXR/image/decode/segdec.c
    ../../FreeImage/trunk/Source/LibJXR/image/decode/strInvTransform.c
    ../../FreeImage/trunk/Source/LibJXR/image/decode/strPredQuantDec.c
    ../../FreeImage/trunk/Source/LibJXR/image/decode/strdec.c
    ../../FreeImage/trunk/Source/LibJXR/image/decode/strdec_x86.c
    ../../FreeImage/trunk/Source/LibJXR/image/encode/encode.c ../../FreeImage/trunk/Source/LibJXR/image/encode/encode.h
    ../../FreeImage/trunk/Source/LibJXR/image/encode/segenc.c
    ../../FreeImage/trunk/Source/LibJXR/image/encode/strFwdTransform.c
    ../../FreeImage/trunk/Source/LibJXR/image/encode/strPredQuantEnc.c
    ../../FreeImage/trunk/Source/LibJXR/image/encode/strenc.c
    ../../FreeImage/trunk/Source/LibJXR/image/encode/strenc_x86.c
    ../../FreeImage/trunk/Source/LibJXR/image/sys/adapthuff.c
    ../../FreeImage/trunk/Source/LibJXR/image/sys/ansi.h
    ../../FreeImage/trunk/Source/LibJXR/image/sys/common.h
    ../../FreeImage/trunk/Source/LibJXR/image/sys/image.c
    ../../FreeImage/trunk/Source/LibJXR/image/sys/perfTimer.h
    ../../FreeImage/trunk/Source/LibJXR/image/sys/perfTimerANSI.c
    ../../FreeImage/trunk/Source/LibJXR/image/sys/strPredQuant.c
    ../../FreeImage/trunk/Source/LibJXR/image/sys/strTransform.c ../../FreeImage/trunk/Source/LibJXR/image/sys/strTransform.h
    ../../FreeImage/trunk/Source/LibJXR/image/sys/strcodec.c ../../FreeImage/trunk/Source/LibJXR/image/sys/strcodec.h
    ../../FreeImage/trunk/Source/LibJXR/image/sys/windowsmediaphoto.h
    ../../FreeImage/trunk/Source/LibJXR/image/sys/xplatform_image.h
    ../../FreeImage/trunk/Source/LibJXR/image/x86/x86.h
    ../../FreeImage/trunk/Source/LibJXR/jxrgluelib/JXRGlue.c ../../FreeImage/trunk/Source/LibJXR/jxrgluelib/JXRGlue.h
    ../../FreeImage/trunk/Source/LibJXR/jxrgluelib/JXRGlueJxr.c
    ../../FreeImage/trunk/Source/LibJXR/jxrgluelib/JXRGluePFC.c
    ../../FreeImage/trunk/Source/LibJXR/jxrgluelib/JXRMeta.c ../../FreeImage/trunk/Source/LibJXR/jxrgluelib/JXRMeta.h
)
target_include_directories(LibJXR PUBLIC
    ../../FreeImage/trunk/Source/LibJXR
    ../../FreeImage/trunk/Source/LibJXR/common/include
    ../../FreeImage/trunk/Source/LibJXR/image/sys
    ../../FreeImage/trunk/Source/LibJXR/jxrgluelib
)

if(WIN32)
    target_compile_definitions(LibJXR PUBLIC
        DISABLE_PERF_MEASUREMENT
    )
endif()

if(UNIX AND NOT APPLE AND NOT ANDROID)
    target_compile_definitions(LibJXR PRIVATE
        __ANSI__
    )

    target_compile_options(LibJXR PRIVATE
        -std=c++11
        -std=gnu++11
    )
endif()

if(ANDROID)
    target_include_directories(LibJXR PUBLIC
	${ANDROID_NDK_ROOT}/sources/cxx-stl/llvm-libc++/include
	${ANDROID_NDK_ROOT}/sources/cxx-stl/llvm-libc++/include/backward
	${ANDROID_NDK_ROOT}/sysroot/usr/include
    )

    target_compile_definitions(LibJXR PRIVATE
        DISABLE_PERF_MEASUREMENT
        __ANSI__
    )

    target_compile_options(LibJXR PRIVATE
        --sysroot
        -Wa,--noexecstack
        -Werror=format-security
        -Wformat
        -Wno-attributes
        -fPIE
        -ffast-math
        -ffunction-sections
        -fno-strict-aliasing
        -fopenmp
        -fstack-protector-strong
        -funwind-tables
        -no-canonical-prefixes
    )
endif()

if(ANDROID AND ANDROID_ABI STREQUAL "armeabi-v7a")
    target_include_directories(LibJXR PUBLIC
	${ANDROID_NDK_ROOT}/sysroot/usr/include/arm-linux-androideabi
    )
endif()

if(ANDROID AND ANDROID_ABI STREQUAL "arm64-v8a")
    target_include_directories(LibJXR PUBLIC
	${ANDROID_NDK_ROOT}/sysroot/usr/include/aarch64-linux-android
    )
endif()

if(APPLE)
    target_compile_definitions(LibJXR PUBLIC
        __ANSI__
    )

    target_compile_options(LibJXR
        -Wc++11-narrowing
        -Wno-ctor-dtor-privacy
        -std=c++11
        -stdlib=libc++
    )
endif()

install(TARGETS LibJXR
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    FRAMEWORK DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
