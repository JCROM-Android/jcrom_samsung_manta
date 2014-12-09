LOCAL_PATH := jcrom/samsung/manta

PRODUCT_PROPERTY_OVERRIDES += persist.sys.voice.capable=false
PRODUCT_PROPERTY_OVERRIDES += persist.sys.sms.capable=false

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.ui.phone=800 \
    persist.sys.ui.tablet=320 \
    persist.sys.ui.phablet=245

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.ui.select=1

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/proprietary/system/etc/preferred-apps/google.xml:system/etc/preferred-apps/google.xml:samsung \
	$(LOCAL_PATH)/proprietary/system/etc/sysconfig/google.xml:system/etc/sysconfig/google.xml:samsung \
	$(LOCAL_PATH)/proprietary/system/etc/sysconfig/google_build.xml:system/etc/sysconfig/google_build.xml:samsung \
	$(LOCAL_PATH)/proprietary/system/etc/updatecmds/google_generic_update.txt:system/etc/updatecmds/google_generic_update.txt:samsung \
	$(LOCAL_PATH)/proprietary/system/lib/librefocus.so:system/lib/librefocus.so:samsung \
	$(LOCAL_PATH)/proprietary/system/lib/libvcdecoder_jni.so:system/lib/libvcdecoder_jni.so:samsung \
	$(LOCAL_PATH)/proprietary/system/lib/libvorbisencoder.so:system/lib/libvorbisencoder.so:samsung \
	$(LOCAL_PATH)/proprietary/system/vendor/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf:samsung \
	$(LOCAL_PATH)/proprietary/system/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so:samsung \
	$(LOCAL_PATH)/proprietary/system/vendor/lib/mediadrm/libwvdrmengine.so:system/vendor/lib/mediadrm/libwvdrmengine.so:samsung \
	$(LOCAL_PATH)/proprietary/system/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so:samsung \
	$(LOCAL_PATH)/proprietary/system/vendor/lib/libfrsdk.so:system/vendor/lib/libfrsdk.so:samsung \
	$(LOCAL_PATH)/proprietary/system/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so:samsung \
	$(LOCAL_PATH)/proprietary/system/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so:samsung \
	$(LOCAL_PATH)/proprietary/system/vendor/lib/libWVphoneAPI.so:system/vendor/lib/libWVphoneAPI.so:samsung \
	$(LOCAL_PATH)/proprietary/system/vendor/lib/libbccArm.so:system/vendor/lib/libbccArm.so:samsung \
	$(LOCAL_PATH)/proprietary/system/vendor/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd:samsung \
	$(LOCAL_PATH)/proprietary/system/vendor/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd:samsung \
	$(LOCAL_PATH)/proprietary/system/etc/apns-conf.xml:system/etc/apns-conf.xml:samsung \
	$(LOCAL_PATH)/proprietary/system/etc/audio_effects.conf:system/etc/audio_effects.conf:samsung \
	$(LOCAL_PATH)/proprietary/system/etc/fmas_eq.dat:system/etc/fmas_eq.dat:samsung \
	$(LOCAL_PATH)/proprietary/system/lib/soundfx/libfmas.so:system/lib/soundfx/libfmas.so:samsung \
	$(LOCAL_PATH)/proprietary/system/lib/libjhead.so:system/lib/libjhead.so:samsung \
	$(LOCAL_PATH)/proprietary/system/lib/libjhead_jni.so:system/lib/libjhead_jni.so:samsung

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Girtab.ogg \
    ro.config.notification_sound=Tejat.ogg \
    ro.config.alarm_alert=Oxygen.ogg \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.facelock.black_timeout=700 \
    ro.facelock.det_timeout=1500 \
    ro.facelock.rec_timeout=2500 \
    ro.facelock.lively_timeout=2500 \
    ro.facelock.est_max_time=500 \
    ro.facelock.use_intro_anim=true \
    ro.setupwizard.network_required=true \
    keyguard.no_require_sim=true \
    camera.flash_off=0 \
    drm.service.enabled=true \
    ro.com.widevine.cachesize=16777216

$(call inherit-product-if-exists, frameworks/base/data/sounds/AudioPackage13.mk)

