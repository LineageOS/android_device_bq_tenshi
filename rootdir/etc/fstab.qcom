# Android fstab file.
# The filesystem that contains the filesystem checker binary (typically /system) cannot
# specify MF_CHECK, and must come before any filesystems that do specify MF_CHECK

#TODO: Add 'check' as fs_mgr_flags with data partition.
# Currently we dont have e2fsck compiled. So fs check would failed.

#<src>                                              <mnt_point>      <type>  <mnt_flags and options>                 <fs_mgr_flags>
/dev/block/bootdevice/by-name/system                /system          ext4    ro,barrier=1                            wait
/dev/block/bootdevice/by-name/userdata              /data            ext4    nosuid,nodev,barrier=1,noauto_da_alloc  wait,resize,encryptable=footer,length=-16384
/dev/block/bootdevice/by-name/config                /frp             emmc    defaults                                defaults
/dev/block/bootdevice/by-name/misc                  /misc            emmc    defaults                                defaults
/dev/block/bootdevice/by-name/cache                 /cache           ext4    nosuid,nodev,barrier=1                  wait,check,formattable
/dev/block/bootdevice/by-name/persist               /persist         ext4    nosuid,nodev,barrier=1                  wait
/dev/block/bootdevice/by-name/dsp                   /dsp             ext4    ro,nosuid,nodev,barrier=1               wait
/dev/block/bootdevice/by-name/modem                 /firmware        vfat    ro,context=u:object_r:firmware_file:s0,shortname=lower,uid=1000,gid=1000,dmask=227,fmask=337           wait

/dev/block/bootdevice/by-name/boot                  /boot            emmc    defaults                                recoveryonly
/dev/block/bootdevice/by-name/recovery              /recovery        emmc    defaults                                recoveryonly

# Storage
/devices/soc/7864900.sdhci/mmc_host*                /storage/sdcard1 vfat    nosuid,nodev                            wait,voldmanaged=sdcard1:auto,noemulatedsd,encryptable=footer
/devices/soc/78db000.usb/msm_hsusb_host*            /storage/usbotg  vfat    nosuid,nodev                            wait,voldmanaged=usbotg:auto
