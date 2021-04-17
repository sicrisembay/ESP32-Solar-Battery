#
# This is a project Makefile. It is assumed the directory this Makefile resides in is a
# project subdirectory.
#

PROJECT_NAME := power_measurement
IDF_PATH := ${FIRMWARE_PATH}/components/esp-idf
ESP32_SENSOR_PATH := ${FIRMWARE_PATH}/components/sensors/ESP32_Sensor

export ESP32_SENSOR_PATH

EXTRA_COMPONENT_DIRS += ${FIRMWARE_PATH}/components/sensors

include ${IDF_PATH}/make/project.mk
