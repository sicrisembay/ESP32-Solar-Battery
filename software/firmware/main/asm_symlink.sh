#!/usr/bin/env bash

set -e
set -u

export THIS_SCRIPT_PATH=$(cd $(dirname $0); pwd)
echo "This script path: ${THIS_SCRIPT_PATH}"
export ULP_SENSOR_PATH=$(dirname ${THIS_SCRIPT_PATH})/components/sensors/ULP_Sensor

echo ${ULP_SENSOR_PATH}

echo "Creating ASM symbolic link..."
ln -sf ${ULP_SENSOR_PATH}/common/wake_up.S ${THIS_SCRIPT_PATH}/ulp/wake_up.S
ln -sf ${ULP_SENSOR_PATH}/common/m_routine.S ${THIS_SCRIPT_PATH}/ulp/m_routine.S
ln -sf ${ULP_SENSOR_PATH}/common/m_stack.S ${THIS_SCRIPT_PATH}/ulp/m_stack.S
ln -sf ${ULP_SENSOR_PATH}/common/i2c/i2c.S ${THIS_SCRIPT_PATH}/ulp/i2c.S
ln -sf ${ULP_SENSOR_PATH}/ina219/ina219.S ${THIS_SCRIPT_PATH}/ulp/ina219.S
echo "...Done"
