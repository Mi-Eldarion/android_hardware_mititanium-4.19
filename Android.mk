LOCAL_PATH := $(call my-dir)

ifeq ($(USE_MITITANIUM_HALS),true)
include $(call all-makefiles-under,$(LOCAL_PATH))

endif
