$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/htc/k2_ul/k2_ul-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/k2_ul/overlay

LOCAL_PATH := device/htc/k2_ul
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_k2_ul
PRODUCT_DEVICE := k2_ul

#Ramdisk
PRODUCT_PACKAGES += \
    ueventd.goldfish.rc \
    ueventd.rc
	
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/root/init.network.sh:root/init.network.sh \
    $(LOCAL_PATH)/root/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/root/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/root/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/root/init.target.recovery.rc:root/init.target.recovery.rc \
    $(LOCAL_PATH)/root/ueventd.target.rc:root/ueventd.target.rc \
    $(LOCAL_PATH)/root/default.prop:root/default.prop \
    $(LOCAL_PATH)/root/fstab.k2_ul:root/fstab.k2_ul
