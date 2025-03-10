USE_MITITANIUM_HALS := true

MITITANIUM_DEVICE_SPECIFIC_HALS := audio display media
$(foreach h, $(call to-upper, $(MITITANIUM_DEVICE_SPECIFIC_HALS)), \
    $(eval USE_DEVICE_SPECIFIC_$(h) := true) \
    $(eval DEVICE_SPECIFIC_$(h)_PATH := $(LOCAL_PATH)/$(call to-lower,$(h))-hal))

# To achieve the same effect as TARGET_ENFORCES_QSSI := true
PRODUCT_SOONG_NAMESPACES += \
    vendor/qcom/opensource/commonsys/display \
    vendor/qcom/opensource/commonsys-intf/display \
    vendor/qcom/opensource/display
