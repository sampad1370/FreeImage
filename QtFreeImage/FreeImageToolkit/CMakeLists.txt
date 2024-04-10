set(CMAKE_CXX_STANDARD 11)

add_library(FreeImageToolkit STATIC
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
target_include_directories(FreeImageToolkit PRIVATE
    ../../FreeImage/trunk
    ../../FreeImage/trunk/Source
    ../../FreeImage/trunk/Source/Metadata
)

target_link_libraries(FreeImageToolkit PRIVATE
    Qt::Core
    Qt::Gui
)

if(WIN32)
    target_compile_definitions(FreeImageToolkit PUBLIC
        FREEIMAGE_EXPORTS
        LIBRAW_NODLL
        OPJ_STATIC
        _CRT_SECURE_NO_DEPRECATE
    )
endif()
