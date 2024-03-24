add_library(LibTIFF4 STATIC
    ../../FreeImage/trunk/Source/LibTIFF4/t4.h
    ../../FreeImage/trunk/Source/LibTIFF4/tif_aux.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_close.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_codec.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_color.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_compress.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_config.h
    ../../FreeImage/trunk/Source/LibTIFF4/tif_config.vc.h
    ../../FreeImage/trunk/Source/LibTIFF4/tif_config.wince.h
    ../../FreeImage/trunk/Source/LibTIFF4/tif_dir.c ../../FreeImage/trunk/Source/LibTIFF4/tif_dir.h
    ../../FreeImage/trunk/Source/LibTIFF4/tif_dirinfo.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_dirread.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_dirwrite.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_dumpmode.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_error.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_extension.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_fax3.c ../../FreeImage/trunk/Source/LibTIFF4/tif_fax3.h
    ../../FreeImage/trunk/Source/LibTIFF4/tif_fax3sm.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_flush.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_getimage.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_jpeg.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_lerc.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_luv.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_lzw.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_next.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_ojpeg.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_open.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_packbits.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_pixarlog.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_predict.c ../../FreeImage/trunk/Source/LibTIFF4/tif_predict.h
    ../../FreeImage/trunk/Source/LibTIFF4/tif_print.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_read.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_strip.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_swab.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_thunder.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_tile.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_version.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_warning.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_webp.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_write.c
    ../../FreeImage/trunk/Source/LibTIFF4/tif_zip.c
    ../../FreeImage/trunk/Source/LibTIFF4/tiff.h
    ../../FreeImage/trunk/Source/LibTIFF4/tiffconf.h
    ../../FreeImage/trunk/Source/LibTIFF4/tiffconf.vc.h
    ../../FreeImage/trunk/Source/LibTIFF4/tiffconf.wince.h
    ../../FreeImage/trunk/Source/LibTIFF4/tiffio.h
    ../../FreeImage/trunk/Source/LibTIFF4/tiffiop.h
    ../../FreeImage/trunk/Source/LibTIFF4/tiffvers.h
    ../../FreeImage/trunk/Source/LibTIFF4/uvcode.h
)
target_include_directories(LibTIFF4 PUBLIC
    ../../FreeImage/trunk
    ../../FreeImage/trunk/Source
    ../../FreeImage/trunk/Source/LibJPEG
    ../../FreeImage/trunk/Source/Metadata
    ../../FreeImage/trunk/Source/ZLib
)

target_link_libraries(LibTIFF4 PUBLIC
    Qt::Core
    Qt::Gui
)

if(UNIX AND NOT APPLE)
    target_compile_definitions(LibTIFF4 PRIVATE
        __ANSI__
    )

    target_compile_options(LibTIFF4 PRIVATE
        -std=c++11
        -std=gnu++11
    )
endif()

if(ANDROID)
    target_include_directories(LibTIFF4 PUBLIC
        $(ANDROID_NDK_ROOT)/sources/cxx-stl/llvm-libc++/include
        $(ANDROID_NDK_ROOT)/sources/cxx-stl/llvm-libc++/include/backward
        $(ANDROID_NDK_ROOT)/sysroot/usr/include
    )

    target_compile_definitions(LibTIFF4 PRIVATE
        DISABLE_PERF_MEASUREMENT
        __ANDROID_API__=28
        __ANSI__
    )

    target_compile_options(LibTIFF4 PRIVATE
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
    target_include_directories(LibTIFF4 PUBLIC
        $(ANDROID_NDK_ROOT)/sysroot/usr/include/arm-linux-androideabi
    )
endif()

if(ANDROID AND ANDROID_TARGET_ARCH___contains___arm64-v8a AND NOT ANDROID_TARGET_ARCH___contains___armeabi-v7a)
    target_include_directories(LibTIFF4 PUBLIC
        $(ANDROID_NDK_ROOT)/sysroot/usr/include/aarch64-linux-android
    )
endif()

if(APPLE)
    target_compile_definitions(LibTIFF4 PRIVATE
        __ANSI__
    )

    target_compile_options(LibTIFF4 PRIVATE
        -Wc++11-narrowing
        -Wno-ctor-dtor-privacy
        -std=c++11
        -stdlib=libc++
    )
endif()

install(TARGETS LibTIFF4
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    FRAMEWORK DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
