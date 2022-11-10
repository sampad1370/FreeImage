TEMPLATE = lib
CONFIG += staticlib
QT-= gui core

include(../QtFreeImageConfig.pri)

INCLUDEPATH+= \
    ../../FreeImage/trunk/ \
    ../../FreeImage/trunk/Source/ \
    ../../FreeImage/trunk/Source/Metadata \
    ../../FreeImage/trunk/Source/LibJPEG/ \
    ../../FreeImage/trunk/Source/ZLib/

SOURCES+= \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_aux.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_close.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_codec.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_color.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_compress.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_dir.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_dirinfo.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_dirread.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_dirwrite.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_dumpmode.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_error.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_extension.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_fax3.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_fax3sm.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_flush.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_getimage.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_jpeg.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_lerc.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_luv.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_lzw.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_next.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_ojpeg.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_open.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_packbits.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_pixarlog.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_predict.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_print.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_read.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_strip.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_swab.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_thunder.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_tile.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_version.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_warning.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_webp.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_write.c \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_zip.c

HEADERS += \
    ../../FreeImage/trunk/Source/LibTIFF4/t4.h \
    ../../FreeImage/trunk/Source/LibTIFF4/tiff.h \
    ../../FreeImage/trunk/Source/LibTIFF4/tiffconf.h \
    ../../FreeImage/trunk/Source/LibTIFF4/tiffconf.vc.h \
    ../../FreeImage/trunk/Source/LibTIFF4/tiffconf.wince.h \
    ../../FreeImage/trunk/Source/LibTIFF4/tiffio.h \
    ../../FreeImage/trunk/Source/LibTIFF4/tiffiop.h \
    ../../FreeImage/trunk/Source/LibTIFF4/tiffvers.h \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_config.h \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_config.vc.h \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_config.wince.h \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_dir.h \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_fax3.h \
    ../../FreeImage/trunk/Source/LibTIFF4/tif_predict.h \
    ../../FreeImage/trunk/Source/LibTIFF4/uvcode.h

DISTFILES+= \
