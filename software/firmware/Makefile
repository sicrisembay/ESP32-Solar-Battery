#
# (C) Copyright 2021
# Sicris Rey Embay, sicris.embay@gmail.com
#

PROJECT_NAME := esp32_solar_battery

# Resolve path relative to this file
FIRMWARE_PATH := $(CURDIR)
ESP32_SENSOR_PATH := $(FIRMWARE_PATH)/components/sensors/ESP32_Sensor
ULP_SENSOR_PATH := $(FIRMWARE_PATH)/components/sensors/ULP_Sensor
export ULP_SENSOR_PATH ESP32_SENSOR_PATH FIRMWARE_PATH
$(info ESP32_SENSOR_PATH is $(ESP32_SENSOR_PATH))
$(info ULP_SENSOR_PATH is $(ULP_SENSOR_PATH))

ifdef CONFIG_QPC_QSPY_ENABLE
CFLAGS += -DQ_SPY
endif

ifndef IDF_PATH
$(error IDF_PATH variable is not set to a valid directory.)
endif

include $(IDF_PATH)/make/project.mk