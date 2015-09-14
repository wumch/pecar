
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

_BOOST_VERSION := 1.58.0
LOCAL_C_INCLUDES += /bak/android/ndk/sources/boost/$(_BOOST_VERSION)/include
LOCAL_STATIC_LIBRARIES += crystax_static atomic cryptopp_static boost_system_static boost_filesystem_static
LOCAL_SHARED_LIBRARIES += crypto ssl

LOCAL_MODULE    := Interact
LOCAL_LDLIBS += -latomic
LOCAL_SRC_FILES := com_wumch_pecar_Interact.cpp

include $(BUILD_SHARED_LIBRARY)
