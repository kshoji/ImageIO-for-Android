LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

# lcmm
LOCAL_MODULE    := lcmm
LOCAL_SRC_FILES := $(LOCAL_MODULE)/cmmerror.c $(LOCAL_MODULE)/cmmio.c $(LOCAL_MODULE)/cmmxforms.c $(LOCAL_MODULE)/NativeCMM.c $(LOCAL_MODULE)/NativeImageFormat.c
LOCAL_SRC_FILES += lcms/src/cmscam02.c lcms/src/cmscam97.c lcms/src/cmscgats.c lcms/src/cmscnvrt.c lcms/src/cmserr.c lcms/src/cmsgamma.c lcms/src/cmsgmt.c lcms/src/cmsintrp.c lcms/src/cmsio0.c lcms/src/cmsio1.c lcms/src/cmslut.c lcms/src/cmsmatsh.c lcms/src/cmsmtrx.c lcms/src/cmsnamed.c lcms/src/cmspack.c lcms/src/cmspcs.c lcms/src/cmsps2.c lcms/src/cmssamp.c lcms/src/cmsvirt.c lcms/src/cmswtpnt.c lcms/src/cmsxform.c
LOCAL_SRC_FILES += exceptions.c
LOCAL_CFLAGS += -DLINUX -DUSE_CUSTOM_SWAB
LOCAL_C_INCLUDES := $(LOCAL_PATH)/$(LOCAL_MODULE)/include $(LOCAL_PATH)/$(LOCAL_MODULE)/../lcms/include $(LOCAL_PATH)/$(LOCAL_MODULE)/../include $(LOCAL_PATH)/$(LOCAL_MODULE)/include $(LOCAL_PATH)/$(LOCAL_MODULE)
include $(BUILD_SHARED_LIBRARY)
include $(CLEAR_VARS)


# FL
LOCAL_MODULE    := FL
LOCAL_SRC_FILES := $(LOCAL_MODULE)/EncodedValue.cpp $(LOCAL_MODULE)/Environment.cpp $(LOCAL_MODULE)/fljni.cpp $(LOCAL_MODULE)/Font.cpp $(LOCAL_MODULE)/FontLibExports.cpp $(LOCAL_MODULE)/Glyph.cpp $(LOCAL_MODULE)/Outline.cpp $(LOCAL_MODULE)/ParsingTables.cpp $(LOCAL_MODULE)/T1Font.cpp $(LOCAL_MODULE)/T1Glyph.cpp $(LOCAL_MODULE)/TTCurve.cpp $(LOCAL_MODULE)/TTFont.cpp $(LOCAL_MODULE)/TypeDefinition.cpp
LOCAL_CPPFLAGS += -fexceptions
LOCAL_C_INCLUDES := $(LOCAL_PATH)/$(LOCAL_MODULE)/include $(LOCAL_PATH)/$(LOCAL_MODULE)
include $(BUILD_SHARED_LIBRARY)
include $(CLEAR_VARS)


# gl : FIXME compile with libX11
#LOCAL_MODULE    := gl
#LOCAL_SRC_FILES := $(LOCAL_MODULE)/blitter.cpp $(LOCAL_MODULE)/gifdecoder.c $(LOCAL_MODULE)/gl.cpp $(LOCAL_MODULE)/LockingKeys.cpp $(LOCAL_MODULE)/LUTTables.cpp $(LOCAL_MODULE)/pngdecoder.c $(LOCAL_MODULE)/SurfaceDataStructure.cpp $(LOCAL_MODULE)/XBlitter.cpp $(LOCAL_MODULE)/XGraphics2D.cpp
#LOCAL_SRC_FILES += pngencoder/libpng-1.5.14/png.c pngencoder/libpng-1.5.14/pngerror.c pngencoder/libpng-1.5.14/pngget.c pngencoder/libpng-1.5.14/pngmem.c pngencoder/libpng-1.5.14/pngpread.c pngencoder/libpng-1.5.14/pngread.c pngencoder/libpng-1.5.14/pngrio.c pngencoder/libpng-1.5.14/pngrtran.c pngencoder/libpng-1.5.14/pngrutil.c pngencoder/libpng-1.5.14/pngset.c pngencoder/libpng-1.5.14/pngtest.c pngencoder/libpng-1.5.14/pngtrans.c pngencoder/libpng-1.5.14/pngwio.c pngencoder/libpng-1.5.14/pngwrite.c pngencoder/libpng-1.5.14/pngwtran.c pngencoder/libpng-1.5.14/pngwutil.c
#LOCAL_SRC_FILES += pngencoder/zlib-1.2.7/adler32.c pngencoder/zlib-1.2.7/compress.c pngencoder/zlib-1.2.7/crc32.c pngencoder/zlib-1.2.7/deflate.c pngencoder/zlib-1.2.7/gzclose.c pngencoder/zlib-1.2.7/gzlib.c pngencoder/zlib-1.2.7/gzread.c pngencoder/zlib-1.2.7/gzwrite.c pngencoder/zlib-1.2.7/infback.c pngencoder/zlib-1.2.7/inffast.c pngencoder/zlib-1.2.7/inflate.c pngencoder/zlib-1.2.7/inftrees.c pngencoder/zlib-1.2.7/trees.c pngencoder/zlib-1.2.7/uncompr.c pngencoder/zlib-1.2.7/zutil.c
#LOCAL_SRC_FILES += libX11/src/GetImage.c libX11/src/Macros.c
#LOCAL_SRC_FILES += exceptions.c
#LOCAL_CPPFLAGS += -fexceptions -DLINUX -D__LP64__ -DANDROID
#LOCAL_CPPFLAGS += -I$(LOCAL_PATH)/$(LOCAL_MODULE)/include -library=no%Cstd
#LOCAL_CPPFLAGS += -nostdinc
#LOCAL_CPP_FEATURES := exceptions rtti
#LOCAL_CFLAGS += -DLINUX -D__LP64__ -D__ANDROID__
#LOCAL_CFLAGS += -march=armv7-a
#LOCAL_CFLAGS += -mcpu=cortex-a8
#LOCAL_CFLAGS += -nostdinc
#LOCAL_C_INCLUDES := $(LOCAL_PATH)/$(LOCAL_MODULE)/std-include $(LOCAL_PATH)/$(LOCAL_MODULE)/include $(LOCAL_PATH)/$(LOCAL_MODULE)/../include $(LOCAL_PATH)/$(LOCAL_MODULE)/../pngencoder/libpng-1.5.14 $(LOCAL_PATH)/$(LOCAL_MODULE)
#LOCAL_C_INCLUDES += pngencoder/libpng-1.5.14 pngencoder/zlib-1.2.7 pngencoder/include
#LOCAL_C_INCLUDES += libX11/include libX11
#include $(BUILD_SHARED_LIBRARY)
#include $(CLEAR_VARS)


# jpegdecoder
LOCAL_MODULE    := jpegdecoder
LOCAL_SRC_FILES := $(LOCAL_MODULE)/JpegDecoder.c
LOCAL_SRC_FILES += gl/JPEGDecoder/jpeg-6b/cdjpeg.c gl/JPEGDecoder/jpeg-6b/jcapimin.c gl/JPEGDecoder/jpeg-6b/jcapistd.c gl/JPEGDecoder/jpeg-6b/jccoefct.c
LOCAL_SRC_FILES += gl/JPEGDecoder/jpeg-6b/jccolor.c gl/JPEGDecoder/jpeg-6b/jcdctmgr.c gl/JPEGDecoder/jpeg-6b/jchuff.c gl/JPEGDecoder/jpeg-6b/jcinit.c gl/JPEGDecoder/jpeg-6b/jcmainct.c gl/JPEGDecoder/jpeg-6b/jcmarker.c gl/JPEGDecoder/jpeg-6b/jcmaster.c gl/JPEGDecoder/jpeg-6b/jcomapi.c
LOCAL_SRC_FILES += gl/JPEGDecoder/jpeg-6b/jcparam.c gl/JPEGDecoder/jpeg-6b/jcphuff.c gl/JPEGDecoder/jpeg-6b/jcprepct.c gl/JPEGDecoder/jpeg-6b/jcsample.c gl/JPEGDecoder/jpeg-6b/jctrans.c gl/JPEGDecoder/jpeg-6b/jdapimin.c gl/JPEGDecoder/jpeg-6b/jdapistd.c gl/JPEGDecoder/jpeg-6b/jdatadst.c
LOCAL_SRC_FILES += gl/JPEGDecoder/jpeg-6b/jdatasrc.c gl/JPEGDecoder/jpeg-6b/jdcoefct.c gl/JPEGDecoder/jpeg-6b/jdcolor.c gl/JPEGDecoder/jpeg-6b/jddctmgr.c gl/JPEGDecoder/jpeg-6b/jdhuff.c gl/JPEGDecoder/jpeg-6b/jdinput.c gl/JPEGDecoder/jpeg-6b/jdmainct.c gl/JPEGDecoder/jpeg-6b/jdmarker.c
LOCAL_SRC_FILES += gl/JPEGDecoder/jpeg-6b/jdmaster.c gl/JPEGDecoder/jpeg-6b/jdmerge.c gl/JPEGDecoder/jpeg-6b/jdphuff.c gl/JPEGDecoder/jpeg-6b/jdpostct.c gl/JPEGDecoder/jpeg-6b/jdsample.c gl/JPEGDecoder/jpeg-6b/jdtrans.c gl/JPEGDecoder/jpeg-6b/jerror.c gl/JPEGDecoder/jpeg-6b/jfdctflt.c
LOCAL_SRC_FILES += gl/JPEGDecoder/jpeg-6b/jfdctfst.c gl/JPEGDecoder/jpeg-6b/jfdctint.c gl/JPEGDecoder/jpeg-6b/jidctflt.c gl/JPEGDecoder/jpeg-6b/jidctfst.c gl/JPEGDecoder/jpeg-6b/jidctint.c gl/JPEGDecoder/jpeg-6b/jidctred.c
LOCAL_SRC_FILES += gl/JPEGDecoder/jpeg-6b/jmemmgr.c gl/JPEGDecoder/jpeg-6b/jmemname.c gl/JPEGDecoder/jpeg-6b/jquant1.c gl/JPEGDecoder/jpeg-6b/jquant2.c gl/JPEGDecoder/jpeg-6b/jutils.c
LOCAL_SRC_FILES += gl/JPEGDecoder/jpeg-6b/rdbmp.c gl/JPEGDecoder/jpeg-6b/rdcolmap.c gl/JPEGDecoder/jpeg-6b/rdgif.c gl/JPEGDecoder/jpeg-6b/rdppm.c gl/JPEGDecoder/jpeg-6b/rdrle.c gl/JPEGDecoder/jpeg-6b/rdswitch.c gl/JPEGDecoder/jpeg-6b/rdtarga.c
LOCAL_SRC_FILES += gl/JPEGDecoder/jpeg-6b/transupp.c gl/JPEGDecoder/jpeg-6b/wrbmp.c gl/JPEGDecoder/jpeg-6b/wrgif.c gl/JPEGDecoder/jpeg-6b/wrppm.c gl/JPEGDecoder/jpeg-6b/wrrle.c gl/JPEGDecoder/jpeg-6b/wrtarga.c
LOCAL_SRC_FILES += exceptions.c
LOCAL_CFLAGS += -DLINUX
LOCAL_C_INCLUDES := $(LOCAL_PATH)/$(LOCAL_MODULE)/include $(LOCAL_PATH)/$(LOCAL_MODULE)/../jpeg $(LOCAL_PATH)/$(LOCAL_MODULE)/../include $(LOCAL_PATH)/$(LOCAL_MODULE) gl/JPEGDecoder/jpeg-6b
include $(BUILD_SHARED_LIBRARY)
include $(CLEAR_VARS)


# jpegencoder
LOCAL_MODULE    := jpegencoder
LOCAL_SRC_FILES := $(LOCAL_MODULE)/JpegEncoder.c
LOCAL_SRC_FILES += gl/JPEGDecoder/jpeg-6b/cdjpeg.c gl/JPEGDecoder/jpeg-6b/jcapimin.c gl/JPEGDecoder/jpeg-6b/jcapistd.c gl/JPEGDecoder/jpeg-6b/jccoefct.c
LOCAL_SRC_FILES += gl/JPEGDecoder/jpeg-6b/jccolor.c gl/JPEGDecoder/jpeg-6b/jcdctmgr.c gl/JPEGDecoder/jpeg-6b/jchuff.c gl/JPEGDecoder/jpeg-6b/jcinit.c gl/JPEGDecoder/jpeg-6b/jcmainct.c gl/JPEGDecoder/jpeg-6b/jcmarker.c gl/JPEGDecoder/jpeg-6b/jcmaster.c gl/JPEGDecoder/jpeg-6b/jcomapi.c
LOCAL_SRC_FILES += gl/JPEGDecoder/jpeg-6b/jcparam.c gl/JPEGDecoder/jpeg-6b/jcphuff.c gl/JPEGDecoder/jpeg-6b/jcprepct.c gl/JPEGDecoder/jpeg-6b/jcsample.c gl/JPEGDecoder/jpeg-6b/jctrans.c gl/JPEGDecoder/jpeg-6b/jdapimin.c gl/JPEGDecoder/jpeg-6b/jdapistd.c gl/JPEGDecoder/jpeg-6b/jdatadst.c
LOCAL_SRC_FILES += gl/JPEGDecoder/jpeg-6b/jdatasrc.c gl/JPEGDecoder/jpeg-6b/jdcoefct.c gl/JPEGDecoder/jpeg-6b/jdcolor.c gl/JPEGDecoder/jpeg-6b/jddctmgr.c gl/JPEGDecoder/jpeg-6b/jdhuff.c gl/JPEGDecoder/jpeg-6b/jdinput.c gl/JPEGDecoder/jpeg-6b/jdmainct.c gl/JPEGDecoder/jpeg-6b/jdmarker.c
LOCAL_SRC_FILES += gl/JPEGDecoder/jpeg-6b/jdmaster.c gl/JPEGDecoder/jpeg-6b/jdmerge.c gl/JPEGDecoder/jpeg-6b/jdphuff.c gl/JPEGDecoder/jpeg-6b/jdpostct.c gl/JPEGDecoder/jpeg-6b/jdsample.c gl/JPEGDecoder/jpeg-6b/jdtrans.c gl/JPEGDecoder/jpeg-6b/jerror.c gl/JPEGDecoder/jpeg-6b/jfdctflt.c
LOCAL_SRC_FILES += gl/JPEGDecoder/jpeg-6b/jfdctfst.c gl/JPEGDecoder/jpeg-6b/jfdctint.c gl/JPEGDecoder/jpeg-6b/jidctflt.c gl/JPEGDecoder/jpeg-6b/jidctfst.c gl/JPEGDecoder/jpeg-6b/jidctint.c gl/JPEGDecoder/jpeg-6b/jidctred.c
LOCAL_SRC_FILES += gl/JPEGDecoder/jpeg-6b/jmemmgr.c gl/JPEGDecoder/jpeg-6b/jmemname.c gl/JPEGDecoder/jpeg-6b/jquant1.c gl/JPEGDecoder/jpeg-6b/jquant2.c gl/JPEGDecoder/jpeg-6b/jutils.c
LOCAL_SRC_FILES += gl/JPEGDecoder/jpeg-6b/rdbmp.c gl/JPEGDecoder/jpeg-6b/rdcolmap.c gl/JPEGDecoder/jpeg-6b/rdgif.c gl/JPEGDecoder/jpeg-6b/rdppm.c gl/JPEGDecoder/jpeg-6b/rdrle.c gl/JPEGDecoder/jpeg-6b/rdswitch.c gl/JPEGDecoder/jpeg-6b/rdtarga.c
LOCAL_SRC_FILES += gl/JPEGDecoder/jpeg-6b/transupp.c gl/JPEGDecoder/jpeg-6b/wrbmp.c gl/JPEGDecoder/jpeg-6b/wrgif.c gl/JPEGDecoder/jpeg-6b/wrppm.c gl/JPEGDecoder/jpeg-6b/wrrle.c gl/JPEGDecoder/jpeg-6b/wrtarga.c
LOCAL_SRC_FILES += exceptions.c
LOCAL_CFLAGS += -DLINUX
LOCAL_C_INCLUDES := $(LOCAL_PATH)/$(LOCAL_MODULE)/include $(LOCAL_PATH)/$(LOCAL_MODULE)/../jpeg $(LOCAL_PATH)/$(LOCAL_MODULE)/../include $(LOCAL_PATH)/$(LOCAL_MODULE)
include $(BUILD_SHARED_LIBRARY)
include $(CLEAR_VARS)


# pngencoder
LOCAL_MODULE    := pngencoder
LOCAL_SRC_FILES := $(LOCAL_MODULE)/pngencoder.c
LOCAL_SRC_FILES += $(LOCAL_MODULE)/libpng-1.5.14/png.c $(LOCAL_MODULE)/libpng-1.5.14/pngerror.c $(LOCAL_MODULE)/libpng-1.5.14/pngget.c $(LOCAL_MODULE)/libpng-1.5.14/pngmem.c $(LOCAL_MODULE)/libpng-1.5.14/pngpread.c $(LOCAL_MODULE)/libpng-1.5.14/pngread.c $(LOCAL_MODULE)/libpng-1.5.14/pngrio.c $(LOCAL_MODULE)/libpng-1.5.14/pngrtran.c $(LOCAL_MODULE)/libpng-1.5.14/pngrutil.c $(LOCAL_MODULE)/libpng-1.5.14/pngset.c $(LOCAL_MODULE)/libpng-1.5.14/pngtest.c $(LOCAL_MODULE)/libpng-1.5.14/pngtrans.c $(LOCAL_MODULE)/libpng-1.5.14/pngwio.c $(LOCAL_MODULE)/libpng-1.5.14/pngwrite.c $(LOCAL_MODULE)/libpng-1.5.14/pngwtran.c $(LOCAL_MODULE)/libpng-1.5.14/pngwutil.c
LOCAL_SRC_FILES += $(LOCAL_MODULE)/zlib-1.2.7/adler32.c $(LOCAL_MODULE)/zlib-1.2.7/compress.c $(LOCAL_MODULE)/zlib-1.2.7/crc32.c $(LOCAL_MODULE)/zlib-1.2.7/deflate.c $(LOCAL_MODULE)/zlib-1.2.7/gzclose.c $(LOCAL_MODULE)/zlib-1.2.7/gzlib.c $(LOCAL_MODULE)/zlib-1.2.7/gzread.c $(LOCAL_MODULE)/zlib-1.2.7/gzwrite.c $(LOCAL_MODULE)/zlib-1.2.7/infback.c $(LOCAL_MODULE)/zlib-1.2.7/inffast.c $(LOCAL_MODULE)/zlib-1.2.7/inflate.c $(LOCAL_MODULE)/zlib-1.2.7/inftrees.c $(LOCAL_MODULE)/zlib-1.2.7/trees.c $(LOCAL_MODULE)/zlib-1.2.7/uncompr.c $(LOCAL_MODULE)/zlib-1.2.7/zutil.c
LOCAL_SRC_FILES += exceptions.c
LOCAL_CFLAGS += -DLINUX
LOCAL_C_INCLUDES := $(LOCAL_PATH)/$(LOCAL_MODULE)/include $(LOCAL_PATH)/$(LOCAL_MODULE)/libpng-1.5.14 $(LOCAL_PATH)/$(LOCAL_MODULE)/../include $(LOCAL_PATH)/$(LOCAL_MODULE)
LOCAL_C_INCLUDES += $(LOCAL_MODULE)/libpng-1.5.14 $(LOCAL_MODULE)/zlib-1.2.7
include $(BUILD_SHARED_LIBRARY)
include $(CLEAR_VARS)

