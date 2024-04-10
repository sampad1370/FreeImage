set(CMAKE_CXX_STANDARD 11)
add_library(LibOpenJPEG STATIC
    ../../FreeImage/trunk/Source/LibOpenJPEG/bio.c ../../FreeImage/trunk/Source/LibOpenJPEG/bio.h
    ../../FreeImage/trunk/Source/LibOpenJPEG/cidx_manager.h
    ../../FreeImage/trunk/Source/LibOpenJPEG/cio.c ../../FreeImage/trunk/Source/LibOpenJPEG/cio.h
    ../../FreeImage/trunk/Source/LibOpenJPEG/dwt.c ../../FreeImage/trunk/Source/LibOpenJPEG/dwt.h
    ../../FreeImage/trunk/Source/LibOpenJPEG/event.c ../../FreeImage/trunk/Source/LibOpenJPEG/event.h
    ../../FreeImage/trunk/Source/LibOpenJPEG/function_list.c ../../FreeImage/trunk/Source/LibOpenJPEG/function_list.h
    ../../FreeImage/trunk/Source/LibOpenJPEG/image.c ../../FreeImage/trunk/Source/LibOpenJPEG/image.h
    ../../FreeImage/trunk/Source/LibOpenJPEG/indexbox_manager.h
    ../../FreeImage/trunk/Source/LibOpenJPEG/invert.c ../../FreeImage/trunk/Source/LibOpenJPEG/invert.h
    ../../FreeImage/trunk/Source/LibOpenJPEG/j2k.c ../../FreeImage/trunk/Source/LibOpenJPEG/j2k.h
    ../../FreeImage/trunk/Source/LibOpenJPEG/jp2.c ../../FreeImage/trunk/Source/LibOpenJPEG/jp2.h
    ../../FreeImage/trunk/Source/LibOpenJPEG/mct.c ../../FreeImage/trunk/Source/LibOpenJPEG/mct.h
    ../../FreeImage/trunk/Source/LibOpenJPEG/mqc.c ../../FreeImage/trunk/Source/LibOpenJPEG/mqc.h
    ../../FreeImage/trunk/Source/LibOpenJPEG/openjpeg.c ../../FreeImage/trunk/Source/LibOpenJPEG/openjpeg.h
    ../../FreeImage/trunk/Source/LibOpenJPEG/opj_clock.c ../../FreeImage/trunk/Source/LibOpenJPEG/opj_clock.h
    ../../FreeImage/trunk/Source/LibOpenJPEG/opj_codec.h
    ../../FreeImage/trunk/Source/LibOpenJPEG/opj_config.h
    ../../FreeImage/trunk/Source/LibOpenJPEG/opj_config_private.h
    ../../FreeImage/trunk/Source/LibOpenJPEG/opj_includes.h
    ../../FreeImage/trunk/Source/LibOpenJPEG/opj_intmath.h
    ../../FreeImage/trunk/Source/LibOpenJPEG/opj_inttypes.h
    ../../FreeImage/trunk/Source/LibOpenJPEG/opj_malloc.h
    ../../FreeImage/trunk/Source/LibOpenJPEG/opj_stdint.h
    ../../FreeImage/trunk/Source/LibOpenJPEG/pi.c ../../FreeImage/trunk/Source/LibOpenJPEG/pi.h
    ../../FreeImage/trunk/Source/LibOpenJPEG/raw.c ../../FreeImage/trunk/Source/LibOpenJPEG/raw.h
    ../../FreeImage/trunk/Source/LibOpenJPEG/t1.c ../../FreeImage/trunk/Source/LibOpenJPEG/t1.h
    ../../FreeImage/trunk/Source/LibOpenJPEG/t1_luts.h
    ../../FreeImage/trunk/Source/LibOpenJPEG/t2.c ../../FreeImage/trunk/Source/LibOpenJPEG/t2.h
    ../../FreeImage/trunk/Source/LibOpenJPEG/tcd.c ../../FreeImage/trunk/Source/LibOpenJPEG/tcd.h
    ../../FreeImage/trunk/Source/LibOpenJPEG/tgt.c ../../FreeImage/trunk/Source/LibOpenJPEG/tgt.h
)
target_link_libraries(LibOpenJPEG PUBLIC
    Qt::Core
    Qt::Gui
)

if(WIN32)
    target_compile_definitions(LibOpenJPEG PUBLIC
        OPJ_STATIC
        _CRT_SECURE_NO_DEPRECATE
    )
endif()

if(UNIX AND NOT APPLE AND NOT ANDROID)
    target_compile_definitions(LibOpenJPEG PRIVATE
        __ANSI__
    )

    target_compile_options(LibOpenJPEG PRIVATE
        -std=c++11
        -std=gnu++11
    )
endif()

if(ANDROID)
    target_include_directories(LibOpenJPEG PUBLIC
	${ANDROID_NDK_ROOT}/sources/cxx-stl/llvm-libc++/include
	${ANDROID_NDK_ROOT}/sources/cxx-stl/llvm-libc++/include/backward
	${ANDROID_NDK_ROOT}/sysroot/usr/include
    )

    target_compile_definitions(LibOpenJPEG PRIVATE
        DISABLE_PERF_MEASUREMENT
        __ANSI__
    )

    target_compile_options(LibOpenJPEG PRIVATE
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
    target_include_directories(LibOpenJPEG PUBLIC
	${ANDROID_NDK_ROOT}/sysroot/usr/include/arm-linux-androideabi
    )
endif()

if(ANDROID AND ANDROID_ABI STREQUAL "arm64-v8a")
    target_include_directories(LibOpenJPEG PUBLIC
	${ANDROID_NDK_ROOT}/sysroot/usr/include/aarch64-linux-android
    )
endif()

if(APPLE)
    target_compile_definitions(LibOpenJPEG PRIVATE
        __ANSI__
    )

    target_compile_options(LibOpenJPEG PRIVATE
        -Wc++11-narrowing
        -Wno-ctor-dtor-privacy
        -std=c++11
        -stdlib=libc++
    )
endif()

install(TARGETS LibOpenJPEG
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    FRAMEWORK DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
