#
# This is a project Makefile. It is assumed the directory this Makefile resides in is a
# project subdirectory.
#

PROJECT_NAME := power_measurement
# Resolve FIRMWARE_PATH relatiive to this Makefile
FIRMWARE_PATH := $(dir $(CURDIR))
FIRMWARE_PATH := $(dir $(FIRMWARE_PATH:%/=%))
FIRMWARE_PATH := $(realpath -s $(FIRMWARE_PATH))
$(info FIRMWARE_PATH is $(FIRMWARE_PATH))

IDF_PATH := ${FIRMWARE_PATH}/components/esp-idf
ESP32_SENSOR_PATH := ${FIRMWARE_PATH}/components/sensors/ESP32_Sensor
ULP_SENSOR_PATH := ${FIRMWARE_PATH}/components/sensors/ULP_Sensor

export ESP32_SENSOR_PATH
export ULP_SENSOR_PATH

EXTRA_COMPONENT_DIRS += ${FIRMWARE_PATH}/components/sensors

include ${IDF_PATH}/make/project.mk
