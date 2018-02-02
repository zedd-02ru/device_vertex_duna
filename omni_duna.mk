$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

PRODUCT_COPY_FILES := \
    device/vertex/duna/prebuilt/kernel:kernel \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

PRODUCT_RELEASE_NAME := Vertex
PRODUCT_NAME := omni_duna
PRODUCT_DEVICE := duna
PRODUCT_BRAND := Vertex
PRODUCT_MODEL := Vertex Impress Duna
PRODUCT_MANUFACTURER := Vertex
