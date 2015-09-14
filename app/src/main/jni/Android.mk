
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

# APP_ABI := "armeabi armeabi-v7a x86 mips"
APP_ABI :=  armeabi

LOCAL_MODULE    := Interact

LOCAL_SRC_FILES := com_wumch_pecar_Interact.cpp

include $(BUILD_SHARED_LIBRARY)
