TEMPLATE = lib
CONFIG += staticlib
QT-= gui core

include(../QtFreeImageConfig.pri)

INCLUDEPATH+= \
    ../../FreeImage/trunk/ \
    ../../FreeImage/trunk/Source/ \
    ../../FreeImage/trunk/Source/Metadata \

SOURCES+= \
    ../../FreeImage/trunk/Source/LibJPEG/jaricom.c \
    ../../FreeImage/trunk/Source/LibJPEG/jcapimin.c \
    ../../FreeImage/trunk/Source/LibJPEG/jcapistd.c \
    ../../FreeImage/trunk/Source/LibJPEG/jcarith.c \
    ../../FreeImage/trunk/Source/LibJPEG/jccoefct.c \
    ../../FreeImage/trunk/Source/LibJPEG/jccolor.c \
    ../../FreeImage/trunk/Source/LibJPEG/jcdctmgr.c \
    ../../FreeImage/trunk/Source/LibJPEG/jchuff.c \
    ../../FreeImage/trunk/Source/LibJPEG/jcinit.c \
    ../../FreeImage/trunk/Source/LibJPEG/jcmainct.c \
    ../../FreeImage/trunk/Source/LibJPEG/jcmarker.c \
    ../../FreeImage/trunk/Source/LibJPEG/jcmaster.c \
    ../../FreeImage/trunk/Source/LibJPEG/jcomapi.c \
    ../../FreeImage/trunk/Source/LibJPEG/jcparam.c \
    ../../FreeImage/trunk/Source/LibJPEG/jcprepct.c \
    ../../FreeImage/trunk/Source/LibJPEG/jcsample.c \
    ../../FreeImage/trunk/Source/LibJPEG/jctrans.c \
    ../../FreeImage/trunk/Source/LibJPEG/jdapimin.c \
    ../../FreeImage/trunk/Source/LibJPEG/jdapistd.c \
    ../../FreeImage/trunk/Source/LibJPEG/jdarith.c \
    ../../FreeImage/trunk/Source/LibJPEG/jdatadst.c \
    ../../FreeImage/trunk/Source/LibJPEG/jdatasrc.c \
    ../../FreeImage/trunk/Source/LibJPEG/jdcoefct.c \
    ../../FreeImage/trunk/Source/LibJPEG/jdcolor.c \
    ../../FreeImage/trunk/Source/LibJPEG/jddctmgr.c \
    ../../FreeImage/trunk/Source/LibJPEG/jdhuff.c \
    ../../FreeImage/trunk/Source/LibJPEG/jdinput.c \
    ../../FreeImage/trunk/Source/LibJPEG/jdmainct.c \
    ../../FreeImage/trunk/Source/LibJPEG/jdmarker.c \
    ../../FreeImage/trunk/Source/LibJPEG/jdmaster.c \
    ../../FreeImage/trunk/Source/LibJPEG/jdmerge.c \
    ../../FreeImage/trunk/Source/LibJPEG/jdpostct.c \
    ../../FreeImage/trunk/Source/LibJPEG/jdsample.c \
    ../../FreeImage/trunk/Source/LibJPEG/jdtrans.c \
    ../../FreeImage/trunk/Source/LibJPEG/jerror.c \
    ../../FreeImage/trunk/Source/LibJPEG/jfdctflt.c \
    ../../FreeImage/trunk/Source/LibJPEG/jfdctfst.c \
    ../../FreeImage/trunk/Source/LibJPEG/jfdctint.c \
    ../../FreeImage/trunk/Source/LibJPEG/jidctflt.c \
    ../../FreeImage/trunk/Source/LibJPEG/jidctfst.c \
    ../../FreeImage/trunk/Source/LibJPEG/jidctint.c \
    ../../FreeImage/trunk/Source/LibJPEG/jmemmgr.c \
    ../../FreeImage/trunk/Source/LibJPEG/jmemnobs.c \
    ../../FreeImage/trunk/Source/LibJPEG/jquant1.c \
    ../../FreeImage/trunk/Source/LibJPEG/jquant2.c \
    ../../FreeImage/trunk/Source/LibJPEG/jutils.c \
    ../../FreeImage/trunk/Source/LibJPEG/transupp.c

HEADERS += \
    ../../FreeImage/trunk/Source/LibJPEG/cderror.h \
    ../../FreeImage/trunk/Source/LibJPEG/cdjpeg.h \
    ../../FreeImage/trunk/Source/LibJPEG/jconfig.h \
    ../../FreeImage/trunk/Source/LibJPEG/jdct.h \
    ../../FreeImage/trunk/Source/LibJPEG/jerror.h \
    ../../FreeImage/trunk/Source/LibJPEG/jinclude.h \
    ../../FreeImage/trunk/Source/LibJPEG/jmemsys.h \
    ../../FreeImage/trunk/Source/LibJPEG/jmorecfg.h \
    ../../FreeImage/trunk/Source/LibJPEG/jpegint.h \
    ../../FreeImage/trunk/Source/LibJPEG/jpeglib.h \
    ../../FreeImage/trunk/Source/LibJPEG/jversion.h \
    ../../FreeImage/trunk/Source/LibJPEG/transupp.h

DISTFILES+= \
