set(CMAKE_CXX_STANDARD 11)
add_library(MetaData STATIC
    ../../FreeImage/trunk/Source/Metadata/Exif.cpp
    ../../FreeImage/trunk/Source/Metadata/FIRational.cpp ../../FreeImage/trunk/Source/Metadata/FIRational.h
    ../../FreeImage/trunk/Source/Metadata/FreeImageTag.cpp ../../FreeImage/trunk/Source/Metadata/FreeImageTag.h
    ../../FreeImage/trunk/Source/Metadata/IPTC.cpp
    ../../FreeImage/trunk/Source/Metadata/TagConversion.cpp
    ../../FreeImage/trunk/Source/Metadata/TagLib.cpp
    ../../FreeImage/trunk/Source/Metadata/XTIFF.cpp
)
target_include_directories(MetaData PUBLIC
    ../../FreeImage/trunk
    ../../FreeImage/trunk/Source
    ../../FreeImage/trunk/Source/Metadata
)

target_link_libraries(MetaData PUBLIC
    Qt::Core
    Qt::Gui
    FreeImageToolkit
    LibTIFF4
)

if(UNIX AND NOT APPLE AND NOT ANDROID)
    target_compile_definitions(MetaData PRIVATE
        __ANSI__
    )

    target_compile_options(MetaData PRIVATE
        -std=c++11
        -std=gnu++11
    )
endif()

if(ANDROID)
    target_include_directories(MetaData PUBLIC
	${ANDROID_NDK_ROOT}/sources/cxx-stl/llvm-libc++/include
	${ANDROID_NDK_ROOT}/sources/cxx-stl/llvm-libc++/include/backward
	${ANDROID_NDK_ROOT}/sysroot/usr/include
    )

    target_compile_definitions(MetaData PRIVATE
        DISABLE_PERF_MEASUREMENT
        __ANSI__
    )

    target_compile_options(MetaData PRIVATE
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
    target_include_directories(MetaData PUBLIC
	${ANDROID_NDK_ROOT}/sysroot/usr/include/arm-linux-androideabi
    )
endif()

if(ANDROID AND ANDROID_ABI STREQUAL "arm64-v8a")
    target_include_directories(MetaData PUBLIC
	${ANDROID_NDK_ROOT}/sysroot/usr/include/aarch64-linux-android
    )
endif()

if(APPLE)
    target_compile_definitions(MetaData PRIVATE
        __ANSI__
    )

    target_compile_options(MetaData PRIVATE
        -Wc++11-narrowing
        -Wno-ctor-dtor-privacy
        -std=c++11
        -stdlib=libc++
    )
endif()

install(TARGETS MetaData
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    FRAMEWORK DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
