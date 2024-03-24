add_library(ZLib STATIC
    ../../FreeImage/trunk/Source/ZLib/adler32.c
    ../../FreeImage/trunk/Source/ZLib/compress.c
    ../../FreeImage/trunk/Source/ZLib/crc32.c ../../FreeImage/trunk/Source/ZLib/crc32.h
    ../../FreeImage/trunk/Source/ZLib/deflate.c ../../FreeImage/trunk/Source/ZLib/deflate.h
    ../../FreeImage/trunk/Source/ZLib/gzclose.c
    ../../FreeImage/trunk/Source/ZLib/gzguts.h
    ../../FreeImage/trunk/Source/ZLib/gzlib.c
    ../../FreeImage/trunk/Source/ZLib/gzread.c
    ../../FreeImage/trunk/Source/ZLib/gzwrite.c
    ../../FreeImage/trunk/Source/ZLib/infback.c
    ../../FreeImage/trunk/Source/ZLib/inffast.c ../../FreeImage/trunk/Source/ZLib/inffast.h
    ../../FreeImage/trunk/Source/ZLib/inffixed.h
    ../../FreeImage/trunk/Source/ZLib/inflate.c ../../FreeImage/trunk/Source/ZLib/inflate.h
    ../../FreeImage/trunk/Source/ZLib/inftrees.c ../../FreeImage/trunk/Source/ZLib/inftrees.h
    ../../FreeImage/trunk/Source/ZLib/trees.c ../../FreeImage/trunk/Source/ZLib/trees.h
    ../../FreeImage/trunk/Source/ZLib/uncompr.c
    ../../FreeImage/trunk/Source/ZLib/zconf.h
    ../../FreeImage/trunk/Source/ZLib/zlib.h
    ../../FreeImage/trunk/Source/ZLib/zutil.c ../../FreeImage/trunk/Source/ZLib/zutil.h
)
target_link_libraries(ZLib PUBLIC
    Qt::Core
    Qt::Gui
)

if(UNIX AND NOT APPLE)
    target_compile_definitions(ZLib PRIVATE
        __ANSI__
    )

    target_compile_options(ZLib PRIVATE
        -std=c++11
        -std=gnu++11
    )
endif()

if(ANDROID)
    target_include_directories(ZLib PUBLIC
        $(ANDROID_NDK_ROOT)/sources/cxx-stl/llvm-libc++/include
        $(ANDROID_NDK_ROOT)/sources/cxx-stl/llvm-libc++/include/backward
        $(ANDROID_NDK_ROOT)/sysroot/usr/include
    )

    target_compile_definitions(ZLib PRIVATE
        DISABLE_PERF_MEASUREMENT
        __ANDROID_API__=28
        __ANSI__
    )

    target_compile_options(ZLib PRIVATE
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
    target_include_directories(ZLib PUBLIC
        $(ANDROID_NDK_ROOT)/sysroot/usr/include/arm-linux-androideabi
    )
endif()

if(ANDROID AND ANDROID_TARGET_ARCH___contains___arm64-v8a AND NOT ANDROID_TARGET_ARCH___contains___armeabi-v7a)
    target_include_directories(ZLib PUBLIC
        $(ANDROID_NDK_ROOT)/sysroot/usr/include/aarch64-linux-android
    )
endif()

if(APPLE)
    target_compile_definitions(ZLib PRIVATE
        __ANSI__
    )

    target_compile_options(ZLib PRIVATE
        -Wc++11-narrowing
        -Wno-ctor-dtor-privacy
        -std=c++11
        -stdlib=libc++
    )
endif()

install(TARGETS ZLib
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    FRAMEWORK DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
