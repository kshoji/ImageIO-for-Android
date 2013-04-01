#LOCAL_PATH := $(call my-dir)


# lcmm
LOCAL_PATH := $(call my-dir)/lcmm

include $(CLEAR_VARS)

LOCAL_CPPFLAGS += -fexceptions -DLINUX
LOCAL_CFLAGS += -DLINUX
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include $(LOCAL_PATH)/../lcms/include $(LOCAL_PATH)/../include
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_MODULE    := lcmm
LOCAL_SRC_FILES := cmmerror.c cmmio.c cmmxforms.c NativeCMM.c NativeImageFormat.c

include $(BUILD_SHARED_LIBRARY)

# FL
#LOCAL_PATH := $(call my-dir)/FL
#
#include $(CLEAR_VARS)
#LOCAL_CPPFLAGS += -fexceptions -DLINUX
#
#LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
#LOCAL_MODULE    := FL
#LOCAL_SRC_FILES := EncodedValue.cpp Environment.cpp fljni.cpp Font.cpp FontLibExports.cpp Glyph.cpp Outline.cpp ParsingTables.cpp T1Font.cpp T1Glyph.cpp TTCurve.cpp TTFont.cpp TypeDefinition.cpp
#
#include $(BUILD_SHARED_LIBRARY)


# gl

#LOCAL_PATH := $(call my-dir)/gl
#
#include $(CLEAR_VARS)
#
#LOCAL_CPPFLAGS += -fexceptions -DLINUX
#LOCAL_CFLAGS += -DLINUX
#LOCAL_C_INCLUDES := $(LOCAL_PATH)/include $(LOCAL_PATH)/../include
#
#LOCAL_MODULE    := gl
#LOCAL_SRC_FILES := blitter.cpp gifdecoder.c gl.cpp LockingKeys.cpp LUTTables.cpp pngdecoder.c SurfaceDataStructure.cpp XBlitter.cpp XGraphics2D.cpp
#
#include $(BUILD_SHARED_LIBRARY)


# jpegdecoder
#LOCAL_PATH := $(call my-dir)/jpegdecoder
#
#include $(CLEAR_VARS)
#
#LOCAL_CPPFLAGS += -fexceptions -DLINUX
#LOCAL_CFLAGS += -DLINUX
#LOCAL_C_INCLUDES := $(LOCAL_PATH)/include $(LOCAL_PATH)/../jpeg $(LOCAL_PATH)/../include
#LOCAL_MODULE    := jpegdecoder
#LOCAL_SRC_FILES := JpegDecoder.c
#
#include $(BUILD_SHARED_LIBRARY)


# jpegencoder
#LOCAL_PATH := $(call my-dir)/jpegencoder
#
#include $(CLEAR_VARS)
#
#LOCAL_CPPFLAGS += -fexceptions -DLINUX
#LOCAL_CFLAGS += -DLINUX
#LOCAL_C_INCLUDES := $(LOCAL_PATH)/include $(LOCAL_PATH)/../jpeg $(LOCAL_PATH)/../include
#LOCAL_MODULE    := jpegencoder
#LOCAL_SRC_FILES := JpegEncoder.c
#
#include $(BUILD_SHARED_LIBRARY)

# pngencoder
#LOCAL_PATH := $(call my-dir)/pngencoder
#
#include $(CLEAR_VARS)
#
#LOCAL_CPPFLAGS += -fexceptions -DLINUX
#LOCAL_CFLAGS += -DLINUX
#LOCAL_C_INCLUDES := $(LOCAL_PATH)/include $(LOCAL_PATH)/libpng-1.5.14 $(LOCAL_PATH)/../include
#LOCAL_MODULE    := pngencoder
#LOCAL_SRC_FILES := pngencoder.c
#
#include $(BUILD_SHARED_LIBRARY)

