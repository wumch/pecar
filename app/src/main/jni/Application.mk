
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

APP_PLATFORM := android-14

APP_STL := gnustl_static
APP_CFLAGS += -DBOOST_DATE_TIME_NO_LIB -DBOOST_REGEX_NO_LIB
APP_CPPFLAGS += -std=c++11 -Wall -fexceptions

# test only
APP_OPTIM := debug

ifeq ($(APP_OPTIM), debug)
    APP_ABI :=  armeabi
    NDK_TOOLCHAIN_VERSION := clang
    APP_CPPFLAGS += -DCS_DEBUG=2 -O0 -g3 -ferror-limit=5
    APP_LDFLAGS += -rdynamic
else
    APP_ABI := all
    APP_CPPFLAGS += -DNDEBUG -O2
    APP_LDFLAGS += -Wl,O2
endif
