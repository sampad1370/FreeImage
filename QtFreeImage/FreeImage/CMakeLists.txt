set(CMAKE_CXX_STANDARD 11)

add_library(FreeImage STATIC
    ../../FreeImage/trunk/Source/CacheFile.h
    ../../FreeImage/trunk/Source/FreeImage.h
    ../../FreeImage/trunk/Source/FreeImage/BitmapAccess.cpp
    ../../FreeImage/trunk/Source/FreeImage/CacheFile.cpp
    ../../FreeImage/trunk/Source/FreeImage/ColorLookup.cpp
    ../../FreeImage/trunk/Source/FreeImage/Conversion.cpp
    ../../FreeImage/trunk/Source/FreeImage/Conversion16_555.cpp
    ../../FreeImage/trunk/Source/FreeImage/Conversion16_565.cpp
    ../../FreeImage/trunk/Source/FreeImage/Conversion24.cpp
    ../../FreeImage/trunk/Source/FreeImage/Conversion32.cpp
    ../../FreeImage/trunk/Source/FreeImage/Conversion4.cpp
    ../../FreeImage/trunk/Source/FreeImage/Conversion8.cpp
    ../../FreeImage/trunk/Source/FreeImage/ConversionFloat.cpp
    ../../FreeImage/trunk/Source/FreeImage/ConversionRGB16.cpp
    ../../FreeImage/trunk/Source/FreeImage/ConversionRGBA16.cpp
    ../../FreeImage/trunk/Source/FreeImage/ConversionRGBAF.cpp
    ../../FreeImage/trunk/Source/FreeImage/ConversionRGBF.cpp
    ../../FreeImage/trunk/Source/FreeImage/ConversionType.cpp
    ../../FreeImage/trunk/Source/FreeImage/ConversionUINT16.cpp
    ../../FreeImage/trunk/Source/FreeImage/FreeImage.cpp
    ../../FreeImage/trunk/Source/FreeImage/FreeImageC.c
    ../../FreeImage/trunk/Source/FreeImage/FreeImageIO.cpp
    ../../FreeImage/trunk/Source/FreeImage/GetType.cpp
    ../../FreeImage/trunk/Source/FreeImage/Halftoning.cpp
    ../../FreeImage/trunk/Source/FreeImage/J2KHelper.cpp ../../FreeImage/trunk/Source/FreeImage/J2KHelper.h
    ../../FreeImage/trunk/Source/FreeImage/LFPQuantizer.cpp
    ../../FreeImage/trunk/Source/FreeImage/MNGHelper.cpp
    ../../FreeImage/trunk/Source/FreeImage/MemoryIO.cpp
    ../../FreeImage/trunk/Source/FreeImage/MultiPage.cpp
    ../../FreeImage/trunk/Source/FreeImage/NNQuantizer.cpp
    ../../FreeImage/trunk/Source/FreeImage/PSDParser.cpp ../../FreeImage/trunk/Source/FreeImage/PSDParser.h
    ../../FreeImage/trunk/Source/FreeImage/PixelAccess.cpp
    ../../FreeImage/trunk/Source/FreeImage/Plugin.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginBMP.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginCUT.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginDDS.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginEXR.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginG3.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginGIF.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginHDR.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginICO.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginIFF.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginJ2K.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginJNG.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginJP2.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginJPEG.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginJXR.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginKOALA.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginMNG.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginPCD.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginPCX.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginPFM.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginPICT.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginPNG.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginPNM.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginPSD.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginRAS.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginRAW.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginSGI.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginTARGA.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginTIFF.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginWBMP.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginWebP.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginXBM.cpp
    ../../FreeImage/trunk/Source/FreeImage/PluginXPM.cpp
    ../../FreeImage/trunk/Source/FreeImage/TIFFLogLuv.cpp
    ../../FreeImage/trunk/Source/FreeImage/ToneMapping.cpp
    ../../FreeImage/trunk/Source/FreeImage/WuQuantizer.cpp
    ../../FreeImage/trunk/Source/FreeImage/ZLibInterface.cpp
    ../../FreeImage/trunk/Source/FreeImage/tmoColorConvert.cpp
    ../../FreeImage/trunk/Source/FreeImage/tmoDrago03.cpp
    ../../FreeImage/trunk/Source/FreeImage/tmoFattal02.cpp
    ../../FreeImage/trunk/Source/FreeImage/tmoReinhard05.cpp
    ../../FreeImage/trunk/Source/FreeImageIO.h
    ../../FreeImage/trunk/Source/FreeImageToolkit/BSplineRotate.cpp
    ../../FreeImage/trunk/Source/FreeImageToolkit/Background.cpp
    ../../FreeImage/trunk/Source/FreeImageToolkit/Channels.cpp
    ../../FreeImage/trunk/Source/FreeImageToolkit/ClassicRotate.cpp
    ../../FreeImage/trunk/Source/FreeImageToolkit/Colors.cpp
    ../../FreeImage/trunk/Source/FreeImageToolkit/CopyPaste.cpp
    ../../FreeImage/trunk/Source/FreeImageToolkit/Display.cpp
    ../../FreeImage/trunk/Source/FreeImageToolkit/Filters.h
    ../../FreeImage/trunk/Source/FreeImageToolkit/Flip.cpp
    ../../FreeImage/trunk/Source/FreeImageToolkit/JPEGTransform.cpp
    ../../FreeImage/trunk/Source/FreeImageToolkit/MultigridPoissonSolver.cpp
    ../../FreeImage/trunk/Source/FreeImageToolkit/Rescale.cpp
    ../../FreeImage/trunk/Source/FreeImageToolkit/Resize.cpp ../../FreeImage/trunk/Source/FreeImageToolkit/Resize.h
)
target_include_directories(FreeImage PUBLIC
    ../../FreeImage/trunk ../../FreeImage/trunk
    ../../FreeImage/trunk/Source ../../FreeImage/trunk/Source
    ../../FreeImage/trunk/Source/FreeImageToolkit ../../FreeImage/trunk/Source/FreeImageToolkit
    ../../FreeImage/trunk/Source/LibJPEG ../../FreeImage/trunk/Source/LibJPEG
    ../../FreeImage/trunk/Source/LibJXR ../../FreeImage/trunk/Source/LibJXR
    ../../FreeImage/trunk/Source/LibJXR/common/include
    ../../FreeImage/trunk/Source/LibJXR/image/sys
    ../../FreeImage/trunk/Source/LibJXR/jxrgluelib
    ../../FreeImage/trunk/Source/LibOpenJPEG ../../FreeImage/trunk/Source/LibOpenJPEG
    ../../FreeImage/trunk/Source/LibPNG ../../FreeImage/trunk/Source/LibPNG
    ../../FreeImage/trunk/Source/LibRawLite ../../FreeImage/trunk/Source/LibRawLite
    ../../FreeImage/trunk/Source/LibRawLite/dcraw
    ../../FreeImage/trunk/Source/LibRawLite/internal
    ../../FreeImage/trunk/Source/LibRawLite/libraw
    ../../FreeImage/trunk/Source/LibRawLite/src
    ../../FreeImage/trunk/Source/LibTIFF4 ../../FreeImage/trunk/Source/LibTIFF4
    ../../FreeImage/trunk/Source/LibWebP
    ../../FreeImage/trunk/Source/LibWebP/src
    ../../FreeImage/trunk/Source/Metadata ../../FreeImage/trunk/Source/Metadata ../../FreeImage/trunk/Source/Metadata
    ../../FreeImage/trunk/Source/OpenEXR ../../FreeImage/trunk/Source/OpenEXR
    ../../FreeImage/trunk/Source/OpenEXR/Half
    ../../FreeImage/trunk/Source/OpenEXR/Iex
    ../../FreeImage/trunk/Source/OpenEXR/IexMath
    ../../FreeImage/trunk/Source/OpenEXR/IlmImf
    ../../FreeImage/trunk/Source/OpenEXR/IlmThread
    ../../FreeImage/trunk/Source/OpenEXR/Imath
    ../../FreeImage/trunk/Source/ZLib ../../FreeImage/trunk/Source/ZLib
)

target_link_libraries(FreeImage PUBLIC
    Qt::Core
    Qt::Gui
)

if(WIN32)
    target_compile_definitions(FreeImage PUBLIC
        FREEIMAGE_EXPORTS
        LIBRAW_NODLL
        OPJ_STATIC
        _CRT_SECURE_NO_DEPRECATE
    )
endif()

if(UNIX AND NOT APPLE AND NOT ANDROID)
    target_compile_definitions(FreeImage PRIVATE
        __ANSI__
    )

    target_compile_options(FreeImage PRIVATE
        -std=c++11
        -std=gnu++11
    )
endif()

if(ANDROID_TARGET_ARCH___contains___armeabi-v7a)
    target_link_libraries(FreeImage PUBLIC
	# Remove: L${ANDROID_NDK_ROOT}/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/9.0.8/lib/linux/arm/
	${ANDROID_NDK_ROOT}/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/9.0.8/lib/linux/arm/libomp.so
        omp
    )
endif()

if(ANDROID_TARGET_ARCH___contains___arm64-v8a AND NOT ANDROID_TARGET_ARCH___contains___armeabi-v7a)
    target_link_libraries(FreeImage PUBLIC
	# Remove: L${ANDROID_NDK_ROOT}/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/9.0.8/lib/linux/aarch64/
	${ANDROID_NDK_ROOT}/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/9.0.8/lib/linux/aarch64/libomp.so
        omp
    )
endif()

if(WIN32)
    target_link_libraries(FreeImage PUBLIC
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../LibJXR/release/
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../LibJpeg/release/
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../LibOpenJPEG/release/
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../LibPNG/release/
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../LibRawLite/release/
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../LibTIFF4/release/
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../LibWebP/release/
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../MetaData/release/
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../OpenEXR/release/
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../ZLib/release/
	FreeImageToolkit
        LibJXR
        LibJpeg
        LibOpenJPEG
        LibPNG
        LibRawLite
        LibTIFF4
        LibWebP
        MetaData
        OpenEXR
        ZLib
    )
endif()

if(NOT WIN32)
    target_link_libraries(FreeImage PUBLIC
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../LibJXR/debug/
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../LibJpeg/debug/
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../LibOpenJPEG/debug/
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../LibPNG/debug/
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../LibRawLite/debug/
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../LibTIFF4/debug/
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../LibWebP/debug/
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../MetaData/debug/
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../OpenEXR/debug/
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../ZLib/debug/
	FreeImageToolkit
        LibJXR
        LibJpeg
        LibOpenJPEG
        LibPNG
        LibRawLite
        LibTIFF4
        LibWebP
        MetaData
        OpenEXR
        ZLib
    )
endif()

if(UNIX)
    target_link_libraries(FreeImage PUBLIC
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../LibJXR/
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../LibJpeg/
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../LibOpenJPEG/
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../LibPNG/
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../LibRawLite/
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../LibTIFF4/
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../LibWebP/
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../MetaData/
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../OpenEXR/
        # Remove: L${CMAKE_CURRENT_BINARY_DIR}/../ZLib/
	FreeImageToolkit
        LibJXR
        LibJpeg
        LibOpenJPEG
        LibPNG
        LibRawLite
        LibTIFF4
        LibWebP
        MetaData
        OpenEXR
        ZLib
    )
endif()

if(ANDROID)
    target_include_directories(FreeImage PUBLIC
	${ANDROID_NDK_ROOT}/sources/cxx-stl/llvm-libc++/include
	${ANDROID_NDK_ROOT}/sources/cxx-stl/llvm-libc++/include/backward
	${ANDROID_NDK_ROOT}/sysroot/usr/include
    )

    target_compile_definitions(FreeImage PUBLIC
        DISABLE_PERF_MEASUREMENT
        __ANSI__
    )

    target_compile_options(FreeImage PRIVATE
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
    target_include_directories(FreeImage PUBLIC
	${ANDROID_NDK_ROOT}/sysroot/usr/include/arm-linux-androideabi
    )
endif()

if(ANDROID AND ANDROID_ABI STREQUAL "arm64-v8a")
    target_include_directories(FreeImage PUBLIC
	${ANDROID_NDK_ROOT}/sysroot/usr/include/aarch64-linux-android
    )
endif()

if(APPLE)
    target_compile_definitions(FreeImage PUBLIC
        __ANSI__
    )

    target_compile_options(FreeImage PRIVATE
        -Wc++11-narrowing
        -Wno-ctor-dtor-privacy
        -std=c++11
        -stdlib=libc++
    )
endif()

install(TARGETS FreeImage
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    FRAMEWORK DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
