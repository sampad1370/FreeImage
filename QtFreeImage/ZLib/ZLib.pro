TEMPLATE = lib
CONFIG += staticlib
QT-= gui core

include(../QtFreeImageConfig.pri)

INCLUDEPATH+=

SOURCES+= \
    ../../FreeImage/trunk/Source/ZLib/adler32.c \
    ../../FreeImage/trunk/Source/ZLib/compress.c \
    ../../FreeImage/trunk/Source/ZLib/crc32.c \
    ../../FreeImage/trunk/Source/ZLib/deflate.c \
    ../../FreeImage/trunk/Source/ZLib/gzclose.c \
    ../../FreeImage/trunk/Source/ZLib/gzlib.c \
    ../../FreeImage/trunk/Source/ZLib/gzread.c \
    ../../FreeImage/trunk/Source/ZLib/gzwrite.c \
    ../../FreeImage/trunk/Source/ZLib/infback.c \
    ../../FreeImage/trunk/Source/ZLib/inffast.c \
    ../../FreeImage/trunk/Source/ZLib/inflate.c \
    ../../FreeImage/trunk/Source/ZLib/inftrees.c \
    ../../FreeImage/trunk/Source/ZLib/trees.c \
    ../../FreeImage/trunk/Source/ZLib/uncompr.c \
    ../../FreeImage/trunk/Source/ZLib/zutil.c

HEADERS += \
    ../../FreeImage/trunk/Source/ZLib/crc32.h \
    ../../FreeImage/trunk/Source/ZLib/deflate.h \
    ../../FreeImage/trunk/Source/ZLib/gzguts.h \
    ../../FreeImage/trunk/Source/ZLib/inffast.h \
    ../../FreeImage/trunk/Source/ZLib/inffixed.h \
    ../../FreeImage/trunk/Source/ZLib/inflate.h \
    ../../FreeImage/trunk/Source/ZLib/inftrees.h \
    ../../FreeImage/trunk/Source/ZLib/trees.h \
    ../../FreeImage/trunk/Source/ZLib/zconf.h \
    ../../FreeImage/trunk/Source/ZLib/zlib.h \
    ../../FreeImage/trunk/Source/ZLib/zutil.h

DISTFILES+= \
