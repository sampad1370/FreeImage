add_library(LibJpeg STATIC
    ../../FreeImage/trunk/Source/LibJPEG/cderror.h
    ../../FreeImage/trunk/Source/LibJPEG/cdjpeg.h
    ../../FreeImage/trunk/Source/LibJPEG/jaricom.c
    ../../FreeImage/trunk/Source/LibJPEG/jcapimin.c
    ../../FreeImage/trunk/Source/LibJPEG/jcapistd.c
    ../../FreeImage/trunk/Source/LibJPEG/jcarith.c
    ../../FreeImage/trunk/Source/LibJPEG/jccoefct.c
    ../../FreeImage/trunk/Source/LibJPEG/jccolor.c
    ../../FreeImage/trunk/Source/LibJPEG/jcdctmgr.c
    ../../FreeImage/trunk/Source/LibJPEG/jchuff.c
    ../../FreeImage/trunk/Source/LibJPEG/jcinit.c
    ../../FreeImage/trunk/Source/LibJPEG/jcmainct.c
    ../../FreeImage/trunk/Source/LibJPEG/jcmarker.c
    ../../FreeImage/trunk/Source/LibJPEG/jcmaster.c
    ../../FreeImage/trunk/Source/LibJPEG/jcomapi.c
    ../../FreeImage/trunk/Source/LibJPEG/jconfig.h
    ../../FreeImage/trunk/Source/LibJPEG/jcparam.c
    ../../FreeImage/trunk/Source/LibJPEG/jcprepct.c
    ../../FreeImage/trunk/Source/LibJPEG/jcsample.c
    ../../FreeImage/trunk/Source/LibJPEG/jctrans.c
    ../../FreeImage/trunk/Source/LibJPEG/jdapimin.c
    ../../FreeImage/trunk/Source/LibJPEG/jdapistd.c
    ../../FreeImage/trunk/Source/LibJPEG/jdarith.c
    ../../FreeImage/trunk/Source/LibJPEG/jdatadst.c
    ../../FreeImage/trunk/Source/LibJPEG/jdatasrc.c
    ../../FreeImage/trunk/Source/LibJPEG/jdcoefct.c
    ../../FreeImage/trunk/Source/LibJPEG/jdcolor.c
    ../../FreeImage/trunk/Source/LibJPEG/jdct.h
    ../../FreeImage/trunk/Source/LibJPEG/jddctmgr.c
    ../../FreeImage/trunk/Source/LibJPEG/jdhuff.c
    ../../FreeImage/trunk/Source/LibJPEG/jdinput.c
    ../../FreeImage/trunk/Source/LibJPEG/jdmainct.c
    ../../FreeImage/trunk/Source/LibJPEG/jdmarker.c
    ../../FreeImage/trunk/Source/LibJPEG/jdmaster.c
    ../../FreeImage/trunk/Source/LibJPEG/jdmerge.c
    ../../FreeImage/trunk/Source/LibJPEG/jdpostct.c
    ../../FreeImage/trunk/Source/LibJPEG/jdsample.c
    ../../FreeImage/trunk/Source/LibJPEG/jdtrans.c
    ../../FreeImage/trunk/Source/LibJPEG/jerror.c ../../FreeImage/trunk/Source/LibJPEG/jerror.h
    ../../FreeImage/trunk/Source/LibJPEG/jfdctflt.c
    ../../FreeImage/trunk/Source/LibJPEG/jfdctfst.c
    ../../FreeImage/trunk/Source/LibJPEG/jfdctint.c
    ../../FreeImage/trunk/Source/LibJPEG/jidctflt.c
    ../../FreeImage/trunk/Source/LibJPEG/jidctfst.c
    ../../FreeImage/trunk/Source/LibJPEG/jidctint.c
    ../../FreeImage/trunk/Source/LibJPEG/jinclude.h
    ../../FreeImage/trunk/Source/LibJPEG/jmemmgr.c
    ../../FreeImage/trunk/Source/LibJPEG/jmemnobs.c
    ../../FreeImage/trunk/Source/LibJPEG/jmemsys.h
    ../../FreeImage/trunk/Source/LibJPEG/jmorecfg.h
    ../../FreeImage/trunk/Source/LibJPEG/jpegint.h
    ../../FreeImage/trunk/Source/LibJPEG/jpeglib.h
    ../../FreeImage/trunk/Source/LibJPEG/jquant1.c
    ../../FreeImage/trunk/Source/LibJPEG/jquant2.c
    ../../FreeImage/trunk/Source/LibJPEG/jutils.c
    ../../FreeImage/trunk/Source/LibJPEG/jversion.h
    ../../FreeImage/trunk/Source/LibJPEG/transupp.c ../../FreeImage/trunk/Source/LibJPEG/transupp.h
)
target_include_directories(LibJpeg PUBLIC
    ../../FreeImage/trunk
    ../../FreeImage/trunk/Source
    ../../FreeImage/trunk/Source/Metadata
)

target_link_libraries(LibJpeg PUBLIC
    Qt::Core
    Qt::Gui
)

if(UNIX AND NOT APPLE)
    target_compile_definitions(LibJpeg PRIVATE
        __ANSI__
    )

    target_compile_options(LibJpeg PRIVATE
        -std=c++11
        -std=gnu++11
    )
endif()

if(ANDROID)
    target_include_directories(LibJpeg PUBLIC
        $(ANDROID_NDK_ROOT)/sources/cxx-stl/llvm-libc++/include
        $(ANDROID_NDK_ROOT)/sources/cxx-stl/llvm-libc++/include/backward
        $(ANDROID_NDK_ROOT)/sysroot/usr/include
    )

    target_compile_definitions(LibJpeg PRIVATE
        DISABLE_PERF_MEASUREMENT
        __ANDROID_API__=28
        __ANSI__
    )

    target_compile_options(LibJpeg PRIVATE
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
        -std=c++11
    )
endif()

if(ANDROID AND ANDROID_TARGET_ARCH___contains___armeabi-v7a)
    target_include_directories(LibJpeg PUBLIC
        $(ANDROID_NDK_ROOT)/sysroot/usr/include/arm-linux-androideabi
    )
endif()

if(ANDROID AND ANDROID_TARGET_ARCH___contains___arm64-v8a AND NOT ANDROID_TARGET_ARCH___contains___armeabi-v7a)
    target_include_directories(LibJpeg PUBLIC
        $(ANDROID_NDK_ROOT)/sysroot/usr/include/aarch64-linux-android
    )
endif()

if(APPLE)
    target_compile_definitions(LibJpeg PRIVATE
        __ANSI__
    )

    target_compile_options(LibJpeg PRIVATE
        -Wc++11-narrowing
        -Wno-ctor-dtor-privacy
        -std=c++11
        -stdlib=libc++
    )
endif()

install(TARGETS LibJpeg
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    FRAMEWORK DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
