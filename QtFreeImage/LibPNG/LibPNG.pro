TEMPLATE = lib
CONFIG += staticlib
QT-= gui core

include(../QtFreeImageConfig.pri)

DEFINES+=PNG_ARM_NEON_OPT=0

INCLUDEPATH+=  \
    ../../FreeImage/trunk/Source/ZLib/

SOURCES+= \
    ../../FreeImage/trunk/Source/LibPNG/png.c \
    ../../FreeImage/trunk/Source/LibPNG/pngerror.c \
    ../../FreeImage/trunk/Source/LibPNG/pngget.c \
    ../../FreeImage/trunk/Source/LibPNG/pngmem.c \
    ../../FreeImage/trunk/Source/LibPNG/pngpread.c \
    ../../FreeImage/trunk/Source/LibPNG/pngread.c \
    ../../FreeImage/trunk/Source/LibPNG/pngrio.c \
    ../../FreeImage/trunk/Source/LibPNG/pngrtran.c \
    ../../FreeImage/trunk/Source/LibPNG/pngrutil.c \
    ../../FreeImage/trunk/Source/LibPNG/pngset.c \
    ../../FreeImage/trunk/Source/LibPNG/pngtest.c \
    ../../FreeImage/trunk/Source/LibPNG/pngtrans.c \
    ../../FreeImage/trunk/Source/LibPNG/pngwio.c \
    ../../FreeImage/trunk/Source/LibPNG/pngwrite.c \
    ../../FreeImage/trunk/Source/LibPNG/pngwtran.c \
    ../../FreeImage/trunk/Source/LibPNG/pngwutil.c

HEADERS += \
    ../../FreeImage/trunk/Source/LibPNG/png.h \
    ../../FreeImage/trunk/Source/LibPNG/pngconf.h \
    ../../FreeImage/trunk/Source/LibPNG/pngdebug.h \
    ../../FreeImage/trunk/Source/LibPNG/pnginfo.h \
    ../../FreeImage/trunk/Source/LibPNG/pnglibconf.h \
    ../../FreeImage/trunk/Source/LibPNG/pngpriv.h \
    ../../FreeImage/trunk/Source/LibPNG/pngstruct.h

DISTFILES+= \
    ../../FreeImage/trunk/Source/LibPNG/ANNOUNCE \
    ../../FreeImage/trunk/Source/LibPNG/AUTHORS \
    ../../FreeImage/trunk/Source/LibPNG/CHANGES \
    ../../FreeImage/trunk/Source/LibPNG/INSTALL \
    ../../FreeImage/trunk/Source/LibPNG/LICENSE \
    ../../FreeImage/trunk/Source/LibPNG/README \
    ../../FreeImage/trunk/Source/LibPNG/TODO \
    ../../FreeImage/trunk/Source/LibPNG/configure \
    ../../FreeImage/trunk/Source/LibPNG/libpng.3 \
    ../../FreeImage/trunk/Source/LibPNG/libpngpf.3 \
    ../../FreeImage/trunk/Source/LibPNG/png.5
