LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
    CopyFile.c

LOCAL_CFLAGS := -Werror -Wall

LOCAL_MODULE:= libhost
LOCAL_MODULE_HOST_OS := darwin linux windows
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/include
LOCAL_CXX_STL := none

ifdef AIDE_BUILD
include $(BUILD_STATIC_LIBRARY)
else
include $(BUILD_HOST_STATIC_LIBRARY)
endif

# Include toolchain prebuilt modules if they exist.
-include $(TARGET_TOOLCHAIN_ROOT)/toolchain.mk
