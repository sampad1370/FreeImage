set(CMAKE_CXX_STANDARD 11)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

add_library(LibPNG STATIC
    ../../FreeImage/trunk/Source/LibPNG/png.c ../../FreeImage/trunk/Source/LibPNG/png.h
    ../../FreeImage/trunk/Source/LibPNG/pngconf.h
    ../../FreeImage/trunk/Source/LibPNG/pngdebug.h
    ../../FreeImage/trunk/Source/LibPNG/pngerror.c
    ../../FreeImage/trunk/Source/LibPNG/pngget.c
    ../../FreeImage/trunk/Source/LibPNG/pnginfo.h
    ../../FreeImage/trunk/Source/LibPNG/pnglibconf.h
    ../../FreeImage/trunk/Source/LibPNG/pngmem.c
    ../../FreeImage/trunk/Source/LibPNG/pngpread.c
    ../../FreeImage/trunk/Source/LibPNG/pngpriv.h
    ../../FreeImage/trunk/Source/LibPNG/pngread.c
    ../../FreeImage/trunk/Source/LibPNG/pngrio.c
    ../../FreeImage/trunk/Source/LibPNG/pngrtran.c
    ../../FreeImage/trunk/Source/LibPNG/pngrutil.c
    ../../FreeImage/trunk/Source/LibPNG/pngset.c
    ../../FreeImage/trunk/Source/LibPNG/pngstruct.h
    ../../FreeImage/trunk/Source/LibPNG/pngtest.c
    ../../FreeImage/trunk/Source/LibPNG/pngtrans.c
    ../../FreeImage/trunk/Source/LibPNG/pngwio.c
    ../../FreeImage/trunk/Source/LibPNG/pngwrite.c
    ../../FreeImage/trunk/Source/LibPNG/pngwtran.c
    ../../FreeImage/trunk/Source/LibPNG/pngwutil.c
)
target_include_directories(LibPNG PUBLIC
    ../../FreeImage/trunk/Source/ZLib
)

target_compile_definitions(LibPNG PUBLIC
    PNG_ARM_NEON_OPT=0
)

target_link_libraries(LibPNG PUBLIC
    Qt::Core
    Qt::Gui
)

if(UNIX AND NOT APPLE AND NOT ANDROID)
    target_compile_definitions(LibPNG PRIVATE
        __ANSI__
    )

    target_compile_options(LibPNG PRIVATE
	-std=c++11 -std=gnu++11
    )
endif()

if(ANDROID)
    target_include_directories(LibPNG PUBLIC
	${ANDROID_NDK_ROOT}/sources/cxx-stl/llvm-libc++/include
	${ANDROID_NDK_ROOT}/sources/cxx-stl/llvm-libc++/include/backward
	${ANDROID_NDK_ROOT}/sysroot/usr/include
    )

    target_compile_definitions(LibPNG PRIVATE
        DISABLE_PERF_MEASUREMENT
        __ANSI__
    )

    target_compile_options(LibPNG PRIVATE
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
    target_include_directories(LibPNG PUBLIC
	${ANDROID_NDK_ROOT}/sysroot/usr/include/arm-linux-androideabi
    )
endif()

if(ANDROID AND ANDROID_ABI STREQUAL "arm64-v8a")
    target_include_directories(LibPNG PUBLIC
	${ANDROID_NDK_ROOT}/sysroot/usr/include/aarch64-linux-android
    )
endif()

if(APPLE)
    target_compile_definitions(LibPNG PRIVATE
        __ANSI__
    )

    target_compile_options(LibPNG PRIVATE
        -Wc++11-narrowing
        -Wno-ctor-dtor-privacy
        -std=c++11
        -stdlib=libc++
    )
endif()

install(TARGETS LibPNG
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    FRAMEWORK DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
