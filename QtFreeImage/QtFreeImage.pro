TEMPLATE=subdirs

SUBDIRS += LibPNG \
    Examples \
    LibRawLite \
    FreeImage \
    MetaData \
    FreeImageToolkit \
    LibJpeg \
    LibJXR \
    LibTIFF4 \
    ZLib \
    LibOpenJPEG \
    LibWebP \
    OpenEXR

#android: {
#    CONFIG+= android
#    message(android)
#}

BaseBuildPath=$$OUT_PWD
DESTDIR=$$OUT_PWD

LibPNG.subdir = LibPNG
LibRawLite.subdir = LibRawLite
LibJXR.subdir = LibJXR
LibTIFF4.subdir = LibTIFF4
ZLib.subdir = ZLib
LibOpenJPEG.subdir = LibOpenJPEG
LibWebP.subdir = LibWebP
FreeImageToolkit.subdir = FreeImageToolkit
MetaData.subdir = MetaData
LibJpeg.subdir = LibJpeg
OpenEXR.subdir = OpenEXR
FreeImage.subdir = FreeImage
FreeImage.depends = LibRawLite MetaData FreeImageToolkit LibJpeg LibJXR LibTIFF4 ZLib LibOpenJPEG LibWebP OpenEXR
Examples.subdir = Examples
Examples.depends = FreeImage

#TEMPLATE = lib
#CONFIG+=staticlib


#INCLUDEPATH+=trunk/Source/LibPNG/ \
#trunk/Source/LibRawLite/ \

