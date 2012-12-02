#!/bin/bash
echo "Download and Deodexing... Please wait."
wget -nc -q https://dl.google.com/dl/android/aosp/mantaray-jop40c-factory-0d641789.tgz
tar zxf mantaray-jop40c-factory-0d641789.tgz
cd mantaray-jop40c
unzip image-mantaray-jop40c.zip
cd ../
./simg2img mantaray-jop40c/system.img system.ext4.img
mkdir system
mkdir tmp
sudo mount -o loop -t ext4 system.ext4.img tmp
sync
mkdir -p system/lib
mkdir -p system/vendor/etc
mkdir -p system/vendor/firmware
mkdir -p system/vendor/lib/drm
mkdir -p system/vendor/secapp
mkdir -p system/vendor/pittpatt
mkdir -p system/media/video
cp -a tmp/lib/liblightcycle.so system/lib/liblightcycle.so
cp -a tmp/lib/libjni_mosaic.so system/lib/libjni_mosaic.so
cp -a tmp/vendor/etc/audio_effects.conf system/vendor/etc/audio_effects.conf
cp -a tmp/vendor/firmware/fimc_is_fw.bin system/vendor/firmware/fimc_is_fw.bin
cp -a tmp/vendor/firmware/maxtouch.fw system/vendor/firmware/maxtouch.fw
cp -a tmp/vendor/firmware/setfile.bin system/vendor/firmware/setfile.bin
cp -a tmp/vendor/lib/drm/libdrmwvmplugin.so system/vendor/lib/drm/libdrmwvmplugin.so
cp -a tmp/vendor/lib/libRSDriverArm.so system/vendor/lib/libRSDriverArm.so
cp -a tmp/vendor/lib/libWVStreamControlAPI_L1.so system/vendor/lib/libWVStreamControlAPI_L1.so
cp -a tmp/vendor/lib/libbccArm.sha1.so system/vendor/lib/libbccArm.sha1.so
cp -a tmp/vendor/lib/libbccArm.so system/vendor/lib/libbccArm.so
cp -a tmp/vendor/lib/libbcinfoArm.so system/vendor/lib/libbcinfoArm.so
cp -a tmp/vendor/lib/libclcoreArm.bc system/vendor/lib/libclcoreArm.bc
cp -a tmp/vendor/lib/libclcore_neonArm.bc system/vendor/lib/libclcore_neonArm.bc
cp -a tmp/vendor/lib/libdrmdecrypt.so system/vendor/lib/libdrmdecrypt.so
cp -a tmp/vendor/lib/libwvdrm_L1.so system/vendor/lib/libwvdrm_L1.so
cp -a tmp/vendor/lib/libwvm.so system/vendor/lib/libwvm.so
cp -a tmp/vendor/secapp/00060308060501020000000000000000.tlbin system/vendor/secapp/00060308060501020000000000000000.tlbin
cp -a tmp/vendor/secapp/020a0000000000000000000000000000.drbin system/vendor/secapp/020a0000000000000000000000000000.drbin
cp -a tmp/vendor/secapp/07060000000000000000000000000000.tlbin system/vendor/secapp/07060000000000000000000000000000.tlbin
cp -a tmp/media/video/AndroidInSpace.240p.mp4 system/media/video/AndroidInSpace.240p.mp4
cp -a tmp/media/video/AndroidInSpace.480p.mp4 system/media/video/AndroidInSpace.480p.mp4
cp -a tmp/media/video/Sunset.240p.mp4 system/media/video/Sunset.240p.mp4
cp -a tmp/media/video/Sunset.480p.mp4 system/media/video/Sunset.480p.mp4
cp -a tmp/media/LMprec_508.emd system/media/LMprec_508.emd
cp -a tmp/media/PFFprec_600.emd system/media/PFFprec_600.emd
cp -a tmp/media/bootanimation.zip system/media/bootanimation.zip
cp -a tmp/vendor/pittpatt system/vendor/
sudo umount tmp
rm -rf tmp
rm -rf mantaray-jop40c
rm system.ext4.img

