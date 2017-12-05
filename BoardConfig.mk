DEVICE_PATH := device/vertex/impress-dune-twrp
# Platform
TARGET_BOARD_PLATFORM := mt6737m
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a53

TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := Vertex_Dune

TARGET_USERIMAGES_USE_EXT4 := true

# Kernel
BOARD_KERNEL_CMDLINE += \
	bootopt=64S3,32N2,32N2 \
	androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x04000000

# make_ext4fs requires numbers in dec format
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2415919104
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4780982272
BOARD_CACHEIMAGE_PARTITION_SIZE := 419430400

BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x04000000 --tags_offset 0x0e000000 --board 1471342055

# Assert
TARGET_OTA_ASSERT_DEVICE := Impress,Dune,Impress_Dune

# Disable memcpy opt (for audio libraries)
#TARGET_CPU_MEMCPY_OPT_DISABLE := true

# EGL
#BOARD_EGL_CFG := $(DEVICE_PATH)/egl.cfg
#USE_OPENGL_RENDERER := true
#BOARD_EGL_WORKAROUND_BUG_10194508 := true
#NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
#TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
#TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
#MTK_HWC_SUPPORT := yes
#MTK_HWC_VERSION := 1.4.1
#MTK_GPU_VERSION := mali midgard r7p0

# MTK Hardware
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true

#system.prop
TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop

# TWRP stuff
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/etc/twrp.fstab
#Fix Wipe
BOARD_SUPPRESS_SECURE_ERASE := true
# Graphics
BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
TARGET_DISABLE_TRIPLE_BUFFERING := false
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness
BRIGHTNESS_SYS_FILE := /sys/class/leds/lcd-backlight/brightness
RECOVERY_NEED_SELINUX_FIX := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
# TWRP
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_THEME := portrait_hdpi
TWRP_NEW_THEME := true
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 75
TW_DEFAULT_LANGUAGE := ru
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_CUSTOM_BATTERY_PATH := /sys/class/power_supply/battery
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_SCREEN_BLANK_ON_BOOT := true
TW_REBOOT_BOOTLOADER := true
TW_FLASH_FROM_STORAGE := true
TW_EXCLUDE_SUPERSU := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NTFS_3G := true
TW_NO_EXFAT_FUSE := true
TWHAVE_SELINUX := true
#TWRP_INCLUDE_LOGCAT := true
#TW_INPUT_BLACKLIST := "hbtp_vm"
TW_MTP_DEVICE := "/dev/mtp_usb"
BOARD_USES_MTK_HARDWARE:=true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
