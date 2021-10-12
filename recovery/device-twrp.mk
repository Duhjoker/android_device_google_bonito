DEVICE_PATH := device/$(BOARD_VENDOR)/$(COMMON_FOLDER)

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)


# Qcom Decryption
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Apex libraries


# Copy modules for depmod
PRODUCT_COPY_FILES += \
    device/google/bonito-kernel/synaptics_dsx_core.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/synaptics_dsx_core.ko \
    device/google/bonito-kernel/synaptics_dsx_fw_update.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/synaptics_dsx_fw_update.ko \
    device/google/bonito-kernel/synaptics_dsx_rmi_dev.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/synaptics_dsx_rmi_dev.ko \
    device/google/bonito-kernel/synaptics_dsx_test_reporting.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/synaptics_dsx_test_reporting.ko

# DRV2624 Haptics Waveform
PRODUCT_COPY_FILES += \
    device/google/bonito/vibrator/drv2624/drv2624_B4.bin:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/firmware/drv2624.bin

# ueventd
PRODUCT_COPY_FILES += \
    device/google/bonito/ueventd.hardware.rc:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/ueventd.rc
