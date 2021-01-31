# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.bt.a2dp.aac_whitelist=false \
    persist.vendor.btstack.a2dp_offload_cap=sbc-aptx-aptxtws-aptxhd-aptxadaptive-aac-ldac \
    persist.vendor.btstack.enable.splita2dp=true \
    persist.vendor.btstack.enable.twsplus=true \
    persist.vendor.btstack.enable.twsplussho=true \
    ro.bluetooth.library_name=libbluetooth_qti.so \
    vendor.bluetooth.soc=cherokee

# Zygote preforking
PRODUCT_PROPERTY_OVERRIDES += \
    persist.device_config.runtime_native.usap_pool_enabled=true

# Hack for Youtube
PRODUCT_PROPERTY_OVERRIDES += \
    sys.display-size=3840x2160

# Set stock DPI
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=440

# Netflix
PRODUCT_PROPERTY_OVERRIDES += \
    ro.netflix.bsp_rev=Q6150-17263-1
