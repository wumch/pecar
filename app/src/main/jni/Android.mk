
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CPP_FEATURES := rtti exceptions
#LOCAL_C_INCLUDES += $(NDK_MODULE_PATH)/boost/$(_BOOST_VERSION)/include $(NDK_MODULE_PATH)/cryptopp/include
LOCAL_STATIC_LIBRARIES += crystax_static cryptopp_static boost_system_static boost_filesystem_static
LOCAL_SHARED_LIBRARIES += ssl_shared

LOCAL_MODULE    := Interact
LOCAL_LDLIBS += -latomic
LOCAL_SRC_FILES := $(LOCAL_PATH)/com_wumch_pecar_Interact.cpp

include $(BUILD_SHARED_LIBRARY)

$(call import-module,boost/$(_BOOST_VERSION))
$(call import-module,cryptopp)
