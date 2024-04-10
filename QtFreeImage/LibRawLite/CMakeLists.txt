set(CMAKE_CXX_STANDARD 11)
add_library(LibRawLite STATIC
    ../../FreeImage/trunk/Source/LibRawLite/internal/dcraw_defs.h
    ../../FreeImage/trunk/Source/LibRawLite/internal/dcraw_fileio_defs.h
    ../../FreeImage/trunk/Source/LibRawLite/internal/defines.h
    ../../FreeImage/trunk/Source/LibRawLite/internal/dmp_include.h
    ../../FreeImage/trunk/Source/LibRawLite/internal/libraw_cameraids.h
    ../../FreeImage/trunk/Source/LibRawLite/internal/libraw_cxx_defs.h
    ../../FreeImage/trunk/Source/LibRawLite/internal/libraw_internal_funcs.h
    ../../FreeImage/trunk/Source/LibRawLite/internal/var_defines.h
    ../../FreeImage/trunk/Source/LibRawLite/internal/x3f_tools.h
    ../../FreeImage/trunk/Source/LibRawLite/libraw/libraw.h
    ../../FreeImage/trunk/Source/LibRawLite/libraw/libraw_alloc.h
    ../../FreeImage/trunk/Source/LibRawLite/libraw/libraw_const.h
    ../../FreeImage/trunk/Source/LibRawLite/libraw/libraw_datastream.h
    ../../FreeImage/trunk/Source/LibRawLite/libraw/libraw_internal.h
    ../../FreeImage/trunk/Source/LibRawLite/libraw/libraw_types.h
    ../../FreeImage/trunk/Source/LibRawLite/libraw/libraw_version.h
    ../../FreeImage/trunk/Source/LibRawLite/src/decoders/canon_600.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/decoders/crx.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/decoders/decoders_dcraw.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/decoders/decoders_libraw.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/decoders/decoders_libraw_dcrdefs.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/decoders/dng.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/decoders/fp_dng.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/decoders/fuji_compressed.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/decoders/generic.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/decoders/kodak_decoders.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/decoders/load_mfbacks.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/decoders/smal.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/decoders/unpack.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/decoders/unpack_thumb.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/demosaic/aahd_demosaic.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/demosaic/ahd_demosaic.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/demosaic/dcb_demosaic.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/demosaic/dht_demosaic.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/demosaic/misc_demosaic.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/demosaic/xtrans_demosaic.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/integration/dngsdk_glue.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/integration/rawspeed_glue.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/libraw_datastream.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/adobepano.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/canon.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/ciff.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/cr3_parser.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/epson.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/exif_gps.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/fuji.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/hasselblad_model.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/identify.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/identify_tools.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/kodak.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/leica.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/makernotes.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/mediumformat.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/minolta.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/misc_parsers.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/nikon.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/normalize_model.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/olympus.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/p1.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/pentax.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/samsung.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/sony.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/tiff.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/postprocessing/aspect_ratio.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/postprocessing/dcraw_process.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/postprocessing/mem_image.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/postprocessing/postprocessing_aux.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/postprocessing/postprocessing_utils.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/postprocessing/postprocessing_utils_dcrdefs.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/preprocessing/ext_preprocess.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/preprocessing/raw2image.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/preprocessing/subtract_black.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/tables/cameralist.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/tables/colorconst.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/tables/colordata.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/tables/wblists.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/utils/curves.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/utils/decoder_info.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/utils/init_close_utils.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/utils/open.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/utils/phaseone_processing.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/utils/read_utils.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/utils/thumb_utils.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/utils/utils_dcraw.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/utils/utils_libraw.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/write/file_write.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/x3f/x3f_parse_process.cpp
    ../../FreeImage/trunk/Source/LibRawLite/src/x3f/x3f_utils_patched.cpp
)
target_include_directories(LibRawLite PUBLIC
    ../../FreeImage/trunk/Source/LibJPEG
    ../../FreeImage/trunk/Source/LibRawLite
    ../../FreeImage/trunk/Source/LibRawLite/dcraw
    ../../FreeImage/trunk/Source/LibRawLite/internal
    ../../FreeImage/trunk/Source/LibRawLite/libraw
    ../../FreeImage/trunk/Source/LibRawLite/src
)

target_link_libraries(LibRawLite PUBLIC
    Qt::Core
    Qt::Gui
)

if(WIN32)
    target_compile_definitions(LibRawLite PUBLIC
        LIBRAW_NODLL
        USE_JPEG
        USE_X3FTOOLS
        _CRT_SECURE_NO_WARNINGS
    )
endif()

if(UNIX AND NOT APPLE AND NOT ANDROID)
    target_compile_definitions(LibRawLite PRIVATE
        __ANSI__
    )

    target_compile_options(LibRawLite PRIVATE
        -std=c++11
        -std=gnu++11
    )
endif()

if(ANDROID)
    target_include_directories(LibRawLite PUBLIC
	${ANDROID_NDK_ROOT}/sources/cxx-stl/llvm-libc++/include
	${ANDROID_NDK_ROOT}/sources/cxx-stl/llvm-libc++/include/backward
	${ANDROID_NDK_ROOT}/sysroot/usr/include
    )

    target_compile_definitions(LibRawLite PRIVATE
        DISABLE_PERF_MEASUREMENT
        __ANSI__
    )

    target_compile_options(LibRawLite PRIVATE
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
    target_include_directories(LibRawLite PUBLIC
	${ANDROID_NDK_ROOT}/sysroot/usr/include/arm-linux-androideabi
    )
endif()

if(ANDROID AND ANDROID_ABI STREQUAL "arm64-v8a")
    target_include_directories(LibRawLite PUBLIC
	${ANDROID_NDK_ROOT}/sysroot/usr/include/aarch64-linux-android
    )
endif()

if(APPLE)
    target_compile_definitions(LibRawLite PUBLIC
        __ANSI__
    )

    target_compile_options(LibRawLite
        -Wc++11-narrowing
        -Wno-ctor-dtor-privacy
        -std=c++11
        -stdlib=libc++
    )
endif()

install(TARGETS LibRawLite
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    FRAMEWORK DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
