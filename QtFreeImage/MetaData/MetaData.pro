TEMPLATE = lib
CONFIG += staticlib
QT-= gui core

include(../QtFreeImageConfig.pri)

INCLUDEPATH+= \
    ../../FreeImage/trunk/ \
    ../../FreeImage/trunk/Source/ \
    ../../FreeImage/trunk/Source/Metadata \

SOURCES+= \
    ../../FreeImage/trunk/Source/Metadata/Exif.cpp \
    ../../FreeImage/trunk/Source/Metadata/FIRational.cpp \
    ../../FreeImage/trunk/Source/Metadata/FreeImageTag.cpp \
    ../../FreeImage/trunk/Source/Metadata/IPTC.cpp \
    ../../FreeImage/trunk/Source/Metadata/TagConversion.cpp \
    ../../FreeImage/trunk/Source/Metadata/TagLib.cpp \
    ../../FreeImage/trunk/Source/Metadata/XTIFF.cpp

HEADERS += \
    ../../FreeImage/trunk/Source/Metadata/FIRational.h \
    ../../FreeImage/trunk/Source/Metadata/FreeImageTag.h

DISTFILES+=
