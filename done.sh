#!/system/bin/sh
export PATH=/sbin:/system/sbin:/system/xbin:/system/bin
#Mount /system to overwrite
mount -o remount,rw /system /system

#Install ESFiles
pm install -rtdg /mnt/udisk2/apks/ES.apk

#Install CarPlay
pm install -rtdg /mnt/udisk2/apks/CarPlayCoolray.apk

#Install Android Auto
pm install -rtdg /mnt/udisk2/apks/com.andrerinas.headunitrevived_4.0.0.apk

#End with reboot
mv /mnt/udisk2/b832bc61472727635baffcf25dd28e9f239273e2 /mnt/udisk2/_b832bc61472727635baffcf25dd28e9f239273e2
sync
sleep 10
reboot