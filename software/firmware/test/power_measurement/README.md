# POWER MEASUREMENT
This is a power measurement test using three INA219 devices.  Measured power is just printed to the console.

**INA219 Device1** : Measures the power to the ESP32 and any attached modules (including the three INA219 devices).

**INA219 Device2** : Measures the power to/from the single cell LiFePo4 battery.

**INA219 Device3** : Measures the power from the Solar panel.



## Build

1. Define "FIRMWARE_PATH" to `<Location of ESP32-Solar-Battery>/software/firmware`
   `$ export FIRMWARE_PATH=~/ESP32-Solar-Battery/software/firmware`

2. Run menuconfig and configure INA219 sensors.
   `$ make -j8 menuconfig`

3. Build
   `$ make -j8

## Note
1. You may need to install ESP-IDF tools
   `$FIRMWARE_PATH/components/esp-idf/install.sh`

