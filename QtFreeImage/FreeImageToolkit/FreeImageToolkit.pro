TEMPLATE = lib
CONFIG += staticlib
QT-= gui core

include(../QtFreeImageConfig.pri)

INCLUDEPATH+= \
    ../../FreeImage/trunk/ \
    ../../FreeImage/trunk/Source/ \
    ../../FreeImage/trunk/Source/Metadata \

SOURCES+= \
    ../../FreeImage/trunk/Source/FreeImageToolkit/Background.cpp \
    ../../FreeImage/trunk/Source/FreeImageToolkit/BSplineRotate.cpp \
    ../../FreeImage/trunk/Source/FreeImageToolkit/Channels.cpp \
    ../../FreeImage/trunk/Source/FreeImageToolkit/ClassicRotate.cpp \
    ../../FreeImage/trunk/Source/FreeImageToolkit/Colors.cpp \
    ../../FreeImage/trunk/Source/FreeImageToolkit/CopyPaste.cpp \
    ../../FreeImage/trunk/Source/FreeImageToolkit/Display.cpp \
    ../../FreeImage/trunk/Source/FreeImageToolkit/Flip.cpp \
    ../../FreeImage/trunk/Source/FreeImageToolkit/JPEGTransform.cpp \
    ../../FreeImage/trunk/Source/FreeImageToolkit/MultigridPoissonSolver.cpp \
    ../../FreeImage/trunk/Source/FreeImageToolkit/Rescale.cpp \
    ../../FreeImage/trunk/Source/FreeImageToolkit/Resize.cpp

HEADERS += \
    ../../FreeImage/trunk/Source/FreeImageToolkit/Filters.h \
    ../../FreeImage/trunk/Source/FreeImageToolkit/Resize.h

DISTFILES+=
