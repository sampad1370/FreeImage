TEMPLATE = lib
CONFIG += staticlib
QT-= gui core

include(../QtFreeImageConfig.pri)

win32: DEFINES+=OPJ_STATIC _CRT_SECURE_NO_DEPRECATE

INCLUDEPATH+=

SOURCES+= \
    ../../FreeImage/trunk/Source/LibOpenJPEG/bio.c \
    ../../FreeImage/trunk/Source/LibOpenJPEG/cio.c \
    ../../FreeImage/trunk/Source/LibOpenJPEG/dwt.c \
    ../../FreeImage/trunk/Source/LibOpenJPEG/event.c \
    ../../FreeImage/trunk/Source/LibOpenJPEG/function_list.c \
    ../../FreeImage/trunk/Source/LibOpenJPEG/image.c \
    ../../FreeImage/trunk/Source/LibOpenJPEG/invert.c \
    ../../FreeImage/trunk/Source/LibOpenJPEG/j2k.c \
    ../../FreeImage/trunk/Source/LibOpenJPEG/jp2.c \
    ../../FreeImage/trunk/Source/LibOpenJPEG/mct.c \
    ../../FreeImage/trunk/Source/LibOpenJPEG/mqc.c \
    ../../FreeImage/trunk/Source/LibOpenJPEG/openjpeg.c \
    ../../FreeImage/trunk/Source/LibOpenJPEG/opj_clock.c \
    ../../FreeImage/trunk/Source/LibOpenJPEG/pi.c \
    ../../FreeImage/trunk/Source/LibOpenJPEG/raw.c \
    ../../FreeImage/trunk/Source/LibOpenJPEG/t1.c \
    ../../FreeImage/trunk/Source/LibOpenJPEG/t2.c \
    ../../FreeImage/trunk/Source/LibOpenJPEG/tcd.c \
    ../../FreeImage/trunk/Source/LibOpenJPEG/tgt.c

HEADERS += \
    ../../FreeImage/trunk/Source/LibOpenJPEG/bio.h \
    ../../FreeImage/trunk/Source/LibOpenJPEG/cidx_manager.h \
    ../../FreeImage/trunk/Source/LibOpenJPEG/cio.h \
    ../../FreeImage/trunk/Source/LibOpenJPEG/dwt.h \
    ../../FreeImage/trunk/Source/LibOpenJPEG/event.h \
    ../../FreeImage/trunk/Source/LibOpenJPEG/function_list.h \
    ../../FreeImage/trunk/Source/LibOpenJPEG/image.h \
    ../../FreeImage/trunk/Source/LibOpenJPEG/indexbox_manager.h \
    ../../FreeImage/trunk/Source/LibOpenJPEG/invert.h \
    ../../FreeImage/trunk/Source/LibOpenJPEG/j2k.h \
    ../../FreeImage/trunk/Source/LibOpenJPEG/jp2.h \
    ../../FreeImage/trunk/Source/LibOpenJPEG/mct.h \
    ../../FreeImage/trunk/Source/LibOpenJPEG/mqc.h \
    ../../FreeImage/trunk/Source/LibOpenJPEG/openjpeg.h \
    ../../FreeImage/trunk/Source/LibOpenJPEG/opj_clock.h \
    ../../FreeImage/trunk/Source/LibOpenJPEG/opj_codec.h \
    ../../FreeImage/trunk/Source/LibOpenJPEG/opj_config.h \
    ../../FreeImage/trunk/Source/LibOpenJPEG/opj_config_private.h \
    ../../FreeImage/trunk/Source/LibOpenJPEG/opj_includes.h \
    ../../FreeImage/trunk/Source/LibOpenJPEG/opj_intmath.h \
    ../../FreeImage/trunk/Source/LibOpenJPEG/opj_inttypes.h \
    ../../FreeImage/trunk/Source/LibOpenJPEG/opj_malloc.h \
    ../../FreeImage/trunk/Source/LibOpenJPEG/opj_stdint.h \
    ../../FreeImage/trunk/Source/LibOpenJPEG/pi.h \
    ../../FreeImage/trunk/Source/LibOpenJPEG/raw.h \
    ../../FreeImage/trunk/Source/LibOpenJPEG/t1.h \
    ../../FreeImage/trunk/Source/LibOpenJPEG/t1_luts.h \
    ../../FreeImage/trunk/Source/LibOpenJPEG/t2.h \
    ../../FreeImage/trunk/Source/LibOpenJPEG/tcd.h \
    ../../FreeImage/trunk/Source/LibOpenJPEG/tgt.h

DISTFILES+= \
