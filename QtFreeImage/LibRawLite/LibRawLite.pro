TEMPLATE = lib
CONFIG += staticlib
QT-= gui core

include(../QtFreeImageConfig.pri)

INCLUDEPATH+= \
    ../../FreeImage/trunk/Source/LibRawLite/ \
    ../../FreeImage/trunk/Source/LibRawLite/dcraw \
    ../../FreeImage/trunk/Source/LibRawLite/internal \
    ../../FreeImage/trunk/Source/LibRawLite/libraw \
    ../../FreeImage/trunk/Source/LibRawLite/src


SOURCES+= \
    ../../FreeImage/trunk/Source/LibRawLite/src/decoders/canon_600.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/decoders/crx.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/decoders/decoders_dcraw.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/decoders/decoders_libraw.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/decoders/decoders_libraw_dcrdefs.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/decoders/dng.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/decoders/fp_dng.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/decoders/fuji_compressed.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/decoders/generic.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/decoders/kodak_decoders.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/decoders/load_mfbacks.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/decoders/smal.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/decoders/unpack.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/decoders/unpack_thumb.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/demosaic/aahd_demosaic.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/demosaic/ahd_demosaic.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/demosaic/dcb_demosaic.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/demosaic/dht_demosaic.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/demosaic/misc_demosaic.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/demosaic/xtrans_demosaic.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/integration/dngsdk_glue.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/integration/rawspeed_glue.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/libraw_datastream.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/adobepano.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/canon.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/ciff.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/cr3_parser.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/epson.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/exif_gps.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/fuji.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/hasselblad_model.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/identify.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/identify_tools.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/kodak.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/leica.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/makernotes.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/mediumformat.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/minolta.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/misc_parsers.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/nikon.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/normalize_model.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/olympus.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/p1.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/pentax.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/samsung.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/sony.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/metadata/tiff.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/postprocessing/aspect_ratio.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/postprocessing/dcraw_process.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/postprocessing/mem_image.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/postprocessing/postprocessing_aux.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/postprocessing/postprocessing_utils.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/postprocessing/postprocessing_utils_dcrdefs.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/preprocessing/ext_preprocess.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/preprocessing/raw2image.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/preprocessing/subtract_black.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/tables/cameralist.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/tables/colorconst.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/tables/colordata.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/tables/wblists.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/utils/curves.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/utils/decoder_info.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/utils/init_close_utils.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/utils/open.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/utils/phaseone_processing.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/utils/read_utils.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/utils/thumb_utils.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/utils/utils_dcraw.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/utils/utils_libraw.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/write/file_write.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/x3f/x3f_parse_process.cpp \
    ../../FreeImage/trunk/Source/LibRawLite/src/x3f/x3f_utils_patched.cpp

HEADERS += \
    ../../FreeImage/trunk/Source/LibRawLite/internal/dcraw_defs.h \
    ../../FreeImage/trunk/Source/LibRawLite/internal/dcraw_fileio_defs.h \
    ../../FreeImage/trunk/Source/LibRawLite/internal/defines.h \
    ../../FreeImage/trunk/Source/LibRawLite/internal/dmp_include.h \
    ../../FreeImage/trunk/Source/LibRawLite/internal/libraw_cameraids.h \
    ../../FreeImage/trunk/Source/LibRawLite/internal/libraw_cxx_defs.h \
    ../../FreeImage/trunk/Source/LibRawLite/internal/libraw_internal_funcs.h \
    ../../FreeImage/trunk/Source/LibRawLite/internal/var_defines.h \
    ../../FreeImage/trunk/Source/LibRawLite/internal/x3f_tools.h \
    ../../FreeImage/trunk/Source/LibRawLite/libraw/libraw.h \
    ../../FreeImage/trunk/Source/LibRawLite/libraw/libraw_alloc.h \
    ../../FreeImage/trunk/Source/LibRawLite/libraw/libraw_const.h \
    ../../FreeImage/trunk/Source/LibRawLite/libraw/libraw_datastream.h \
    ../../FreeImage/trunk/Source/LibRawLite/libraw/libraw_internal.h \
    ../../FreeImage/trunk/Source/LibRawLite/libraw/libraw_types.h \
    ../../FreeImage/trunk/Source/LibRawLite/libraw/libraw_version.h

DISTFILES+= \
    ../../FreeImage/trunk/Source/LibRawLite/COPYRIGHT \
    ../../FreeImage/trunk/Source/LibRawLite/DEVELOPER-NOTES \
    ../../FreeImage/trunk/Source/LibRawLite/LICENSE.CDDL \
    ../../FreeImage/trunk/Source/LibRawLite/LICENSE.LGPL \
    ../../FreeImage/trunk/Source/LibRawLite/README \
    ../../FreeImage/trunk/Source/LibRawLite/README.cmake \
    ../../FreeImage/trunk/Source/LibRawLite/README.demosaic-packs \
    ../../FreeImage/trunk/Source/LibRawLite/README.md
