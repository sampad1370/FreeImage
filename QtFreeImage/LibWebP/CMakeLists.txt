qt_add_library(LibWebP
    ../../FreeImage/trunk/Source/LibWebP/src/dec/alpha_dec.c
    ../../FreeImage/trunk/Source/LibWebP/src/dec/alphai_dec.h
    ../../FreeImage/trunk/Source/LibWebP/src/dec/buffer_dec.c
    ../../FreeImage/trunk/Source/LibWebP/src/dec/common_dec.h
    ../../FreeImage/trunk/Source/LibWebP/src/dec/frame_dec.c
    ../../FreeImage/trunk/Source/LibWebP/src/dec/idec_dec.c
    ../../FreeImage/trunk/Source/LibWebP/src/dec/io_dec.c
    ../../FreeImage/trunk/Source/LibWebP/src/dec/quant_dec.c
    ../../FreeImage/trunk/Source/LibWebP/src/dec/tree_dec.c
    ../../FreeImage/trunk/Source/LibWebP/src/dec/vp8_dec.c ../../FreeImage/trunk/Source/LibWebP/src/dec/vp8_dec.h
    ../../FreeImage/trunk/Source/LibWebP/src/dec/vp8i_dec.h
    ../../FreeImage/trunk/Source/LibWebP/src/dec/vp8l_dec.c
    ../../FreeImage/trunk/Source/LibWebP/src/dec/vp8li_dec.h
    ../../FreeImage/trunk/Source/LibWebP/src/dec/webp_dec.c
    ../../FreeImage/trunk/Source/LibWebP/src/dec/webpi_dec.h
    ../../FreeImage/trunk/Source/LibWebP/src/demux/anim_decode.c
    ../../FreeImage/trunk/Source/LibWebP/src/demux/demux.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/alpha_processing.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/alpha_processing_mips_dsp_r2.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/alpha_processing_neon.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/alpha_processing_sse2.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/alpha_processing_sse41.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/common_sse2.h
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/common_sse41.h
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/cost.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/cost_mips32.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/cost_mips_dsp_r2.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/cost_neon.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/cost_sse2.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/cpu.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/dec.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/dec_clip_tables.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/dec_mips32.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/dec_mips_dsp_r2.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/dec_msa.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/dec_neon.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/dec_sse2.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/dec_sse41.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/dsp.h
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/enc.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/enc_avx2.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/enc_mips32.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/enc_mips_dsp_r2.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/enc_msa.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/enc_neon.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/enc_sse2.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/enc_sse41.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/filters.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/filters_mips_dsp_r2.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/filters_msa.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/filters_neon.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/filters_sse2.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/lossless.c ../../FreeImage/trunk/Source/LibWebP/src/dsp/lossless.h
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/lossless_common.h
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/lossless_enc.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/lossless_enc_mips32.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/lossless_enc_mips_dsp_r2.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/lossless_enc_msa.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/lossless_enc_neon.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/lossless_enc_sse2.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/lossless_enc_sse41.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/lossless_mips_dsp_r2.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/lossless_msa.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/lossless_neon.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/lossless_sse2.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/lossless_sse41.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/mips_macro.h
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/msa_macro.h
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/neon.h
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/quant.h
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/rescaler.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/rescaler_mips32.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/rescaler_mips_dsp_r2.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/rescaler_msa.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/rescaler_neon.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/rescaler_sse2.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/ssim.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/ssim_sse2.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/upsampling.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/upsampling_mips_dsp_r2.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/upsampling_msa.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/upsampling_neon.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/upsampling_sse2.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/upsampling_sse41.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/yuv.c ../../FreeImage/trunk/Source/LibWebP/src/dsp/yuv.h
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/yuv_mips32.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/yuv_mips_dsp_r2.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/yuv_neon.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/yuv_sse2.c
    ../../FreeImage/trunk/Source/LibWebP/src/dsp/yuv_sse41.c
    ../../FreeImage/trunk/Source/LibWebP/src/enc/alpha_enc.c
    ../../FreeImage/trunk/Source/LibWebP/src/enc/analysis_enc.c
    ../../FreeImage/trunk/Source/LibWebP/src/enc/backward_references_cost_enc.c
    ../../FreeImage/trunk/Source/LibWebP/src/enc/backward_references_enc.c ../../FreeImage/trunk/Source/LibWebP/src/enc/backward_references_enc.h
    ../../FreeImage/trunk/Source/LibWebP/src/enc/config_enc.c
    ../../FreeImage/trunk/Source/LibWebP/src/enc/cost_enc.c ../../FreeImage/trunk/Source/LibWebP/src/enc/cost_enc.h
    ../../FreeImage/trunk/Source/LibWebP/src/enc/filter_enc.c
    ../../FreeImage/trunk/Source/LibWebP/src/enc/frame_enc.c
    ../../FreeImage/trunk/Source/LibWebP/src/enc/histogram_enc.c ../../FreeImage/trunk/Source/LibWebP/src/enc/histogram_enc.h
    ../../FreeImage/trunk/Source/LibWebP/src/enc/iterator_enc.c
    ../../FreeImage/trunk/Source/LibWebP/src/enc/near_lossless_enc.c
    ../../FreeImage/trunk/Source/LibWebP/src/enc/picture_csp_enc.c
    ../../FreeImage/trunk/Source/LibWebP/src/enc/picture_enc.c
    ../../FreeImage/trunk/Source/LibWebP/src/enc/picture_psnr_enc.c
    ../../FreeImage/trunk/Source/LibWebP/src/enc/picture_rescale_enc.c
    ../../FreeImage/trunk/Source/LibWebP/src/enc/picture_tools_enc.c
    ../../FreeImage/trunk/Source/LibWebP/src/enc/predictor_enc.c
    ../../FreeImage/trunk/Source/LibWebP/src/enc/quant_enc.c
    ../../FreeImage/trunk/Source/LibWebP/src/enc/syntax_enc.c
    ../../FreeImage/trunk/Source/LibWebP/src/enc/token_enc.c
    ../../FreeImage/trunk/Source/LibWebP/src/enc/tree_enc.c
    ../../FreeImage/trunk/Source/LibWebP/src/enc/vp8i_enc.h
    ../../FreeImage/trunk/Source/LibWebP/src/enc/vp8l_enc.c
    ../../FreeImage/trunk/Source/LibWebP/src/enc/vp8li_enc.h
    ../../FreeImage/trunk/Source/LibWebP/src/enc/webp_enc.c
    ../../FreeImage/trunk/Source/LibWebP/src/mux/anim_encode.c
    ../../FreeImage/trunk/Source/LibWebP/src/mux/animi.h
    ../../FreeImage/trunk/Source/LibWebP/src/mux/muxedit.c
    ../../FreeImage/trunk/Source/LibWebP/src/mux/muxi.h
    ../../FreeImage/trunk/Source/LibWebP/src/mux/muxinternal.c
    ../../FreeImage/trunk/Source/LibWebP/src/mux/muxread.c
    ../../FreeImage/trunk/Source/LibWebP/src/utils/bit_reader_inl_utils.h
    ../../FreeImage/trunk/Source/LibWebP/src/utils/bit_reader_utils.c ../../FreeImage/trunk/Source/LibWebP/src/utils/bit_reader_utils.h
    ../../FreeImage/trunk/Source/LibWebP/src/utils/bit_writer_utils.c ../../FreeImage/trunk/Source/LibWebP/src/utils/bit_writer_utils.h
    ../../FreeImage/trunk/Source/LibWebP/src/utils/color_cache_utils.c ../../FreeImage/trunk/Source/LibWebP/src/utils/color_cache_utils.h
    ../../FreeImage/trunk/Source/LibWebP/src/utils/endian_inl_utils.h
    ../../FreeImage/trunk/Source/LibWebP/src/utils/filters_utils.c ../../FreeImage/trunk/Source/LibWebP/src/utils/filters_utils.h
    ../../FreeImage/trunk/Source/LibWebP/src/utils/huffman_encode_utils.c ../../FreeImage/trunk/Source/LibWebP/src/utils/huffman_encode_utils.h
    ../../FreeImage/trunk/Source/LibWebP/src/utils/huffman_utils.c ../../FreeImage/trunk/Source/LibWebP/src/utils/huffman_utils.h
    ../../FreeImage/trunk/Source/LibWebP/src/utils/quant_levels_dec_utils.c ../../FreeImage/trunk/Source/LibWebP/src/utils/quant_levels_dec_utils.h
    ../../FreeImage/trunk/Source/LibWebP/src/utils/quant_levels_utils.c ../../FreeImage/trunk/Source/LibWebP/src/utils/quant_levels_utils.h
    ../../FreeImage/trunk/Source/LibWebP/src/utils/random_utils.c ../../FreeImage/trunk/Source/LibWebP/src/utils/random_utils.h
    ../../FreeImage/trunk/Source/LibWebP/src/utils/rescaler_utils.c ../../FreeImage/trunk/Source/LibWebP/src/utils/rescaler_utils.h
    ../../FreeImage/trunk/Source/LibWebP/src/utils/thread_utils.c ../../FreeImage/trunk/Source/LibWebP/src/utils/thread_utils.h
    ../../FreeImage/trunk/Source/LibWebP/src/utils/utils.c ../../FreeImage/trunk/Source/LibWebP/src/utils/utils.h
    ../../FreeImage/trunk/Source/LibWebP/src/webp/decode.h
    ../../FreeImage/trunk/Source/LibWebP/src/webp/demux.h
    ../../FreeImage/trunk/Source/LibWebP/src/webp/encode.h
    ../../FreeImage/trunk/Source/LibWebP/src/webp/format_constants.h
    ../../FreeImage/trunk/Source/LibWebP/src/webp/mux.h
    ../../FreeImage/trunk/Source/LibWebP/src/webp/mux_types.h
    ../../FreeImage/trunk/Source/LibWebP/src/webp/types.h
)
target_include_directories(LibWebP PUBLIC
    ../../FreeImage/trunk/Source/LibWebP
)

target_link_libraries(LibWebP PUBLIC
    Qt::Core
    Qt::Gui
)

if(UNIX AND NOT APPLE)
    target_compile_definitions(LibWebP PUBLIC
        __ANSI__
    )

    target_compile_options(LibWebP
        -std=c++11
        -std=gnu++11
    )
endif()

if(ANDROID)
    target_include_directories(LibWebP PUBLIC
        $(ANDROID_NDK_ROOT)/sources/cxx-stl/llvm-libc++/include
        $(ANDROID_NDK_ROOT)/sources/cxx-stl/llvm-libc++/include/backward
        $(ANDROID_NDK_ROOT)/sysroot/usr/include
    )

    target_compile_definitions(LibWebP PUBLIC
        DISABLE_PERF_MEASUREMENT
        __ANDROID_API__=28
        __ANSI__
    )

    target_compile_options(LibWebP
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
    target_include_directories(LibWebP PUBLIC
        $(ANDROID_NDK_ROOT)/sysroot/usr/include/arm-linux-androideabi
    )
endif()

if(ANDROID AND ANDROID_TARGET_ARCH___contains___arm64-v8a AND NOT ANDROID_TARGET_ARCH___contains___armeabi-v7a)
    target_include_directories(LibWebP PUBLIC
        $(ANDROID_NDK_ROOT)/sysroot/usr/include/aarch64-linux-android
    )
endif()

if(APPLE)
    target_compile_definitions(LibWebP PUBLIC
        __ANSI__
    )

    target_compile_options(LibWebP
        -Wc++11-narrowing
        -Wno-ctor-dtor-privacy
        -std=c++11
        -stdlib=libc++
    )
endif()

install(TARGETS LibWebP
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    FRAMEWORK DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
