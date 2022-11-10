TEMPLATE = lib
CONFIG += staticlib
QT-= gui core

include(../QtFreeImageConfig.pri)

INCLUDEPATH+=  \
    ../../FreeImage/trunk/Source/LibJXR \
    ../../FreeImage/trunk/Source/LibJXR/common/include \
    ../../FreeImage/trunk/Source/LibJXR/image/sys \
    ../../FreeImage/trunk/Source/LibJXR/jxrgluelib

SOURCES+= \
    ../../FreeImage/trunk/Source/LibJXR/image/decode/decode.c \
    ../../FreeImage/trunk/Source/LibJXR/image/decode/JXRTranscode.c \
    ../../FreeImage/trunk/Source/LibJXR/image/decode/postprocess.c \
    ../../FreeImage/trunk/Source/LibJXR/image/decode/segdec.c \
    ../../FreeImage/trunk/Source/LibJXR/image/decode/strdec.c \
    ../../FreeImage/trunk/Source/LibJXR/image/decode/strdec_x86.c \
    ../../FreeImage/trunk/Source/LibJXR/image/decode/strInvTransform.c \
    ../../FreeImage/trunk/Source/LibJXR/image/decode/strPredQuantDec.c \
    ../../FreeImage/trunk/Source/LibJXR/image/encode/encode.c \
    ../../FreeImage/trunk/Source/LibJXR/image/encode/segenc.c \
    ../../FreeImage/trunk/Source/LibJXR/image/encode/strenc.c \
    ../../FreeImage/trunk/Source/LibJXR/image/encode/strenc_x86.c \
    ../../FreeImage/trunk/Source/LibJXR/image/encode/strFwdTransform.c \
    ../../FreeImage/trunk/Source/LibJXR/image/encode/strPredQuantEnc.c \
    ../../FreeImage/trunk/Source/LibJXR/image/sys/adapthuff.c \
    ../../FreeImage/trunk/Source/LibJXR/image/sys/image.c \
    ../../FreeImage/trunk/Source/LibJXR/image/sys/perfTimerANSI.c \
    ../../FreeImage/trunk/Source/LibJXR/image/sys/strcodec.c \
    ../../FreeImage/trunk/Source/LibJXR/image/sys/strPredQuant.c \
    ../../FreeImage/trunk/Source/LibJXR/image/sys/strTransform.c \
    ../../FreeImage/trunk/Source/LibJXR/jxrgluelib/JXRGlue.c \
    ../../FreeImage/trunk/Source/LibJXR/jxrgluelib/JXRGlueJxr.c \
    ../../FreeImage/trunk/Source/LibJXR/jxrgluelib/JXRGluePFC.c \
    ../../FreeImage/trunk/Source/LibJXR/jxrgluelib/JXRMeta.c

HEADERS += \
    ../../FreeImage/trunk/Source/LibJXR/common/include/guiddef.h \
    ../../FreeImage/trunk/Source/LibJXR/common/include/wmsal.h \
    ../../FreeImage/trunk/Source/LibJXR/common/include/wmspecstring.h \
    ../../FreeImage/trunk/Source/LibJXR/common/include/wmspecstrings_adt.h \
    ../../FreeImage/trunk/Source/LibJXR/common/include/wmspecstrings_strict.h \
    ../../FreeImage/trunk/Source/LibJXR/common/include/wmspecstrings_undef.h \
    ../../FreeImage/trunk/Source/LibJXR/image/decode/decode.h \
    ../../FreeImage/trunk/Source/LibJXR/image/encode/encode.h \
    ../../FreeImage/trunk/Source/LibJXR/image/sys/ansi.h \
    ../../FreeImage/trunk/Source/LibJXR/image/sys/common.h \
    ../../FreeImage/trunk/Source/LibJXR/image/sys/perfTimer.h \
    ../../FreeImage/trunk/Source/LibJXR/image/sys/strcodec.h \
    ../../FreeImage/trunk/Source/LibJXR/image/sys/strTransform.h \
    ../../FreeImage/trunk/Source/LibJXR/image/sys/windowsmediaphoto.h \
    ../../FreeImage/trunk/Source/LibJXR/image/sys/xplatform_image.h \
    ../../FreeImage/trunk/Source/LibJXR/image/x86/x86.h \
    ../../FreeImage/trunk/Source/LibJXR/jxrgluelib/JXRGlue.h \
    ../../FreeImage/trunk/Source/LibJXR/jxrgluelib/JXRMeta.h

DISTFILES+= \
