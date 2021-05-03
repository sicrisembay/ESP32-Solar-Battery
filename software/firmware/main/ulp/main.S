#include "soc/rtc_cntl_reg.h"
#include "soc/rtc_io_reg.h"
#include "soc/soc_ulp.h"
#include "m_stack.S"
#include "m_routine.S"
#include "sdkconfig.h"

    .set N_DATA_SIZE, CONFIG_ULP_INA219_MAX_SAMPLE
    .set DATA_ARRAY_SIZE, CONFIG_ULP_INA219_MAX_SAMPLE * 4

#define SOLAR_INA219_DEV_ID     (0x0000)
#define BATTERY_INA219_DEV_ID   (0x0001)

    .bss
    .global stackStart
stackStart:
    .skip 100
    .global stackEnd
stackEnd:
    .long 0

    .global ina219_sample_count
ina219_sample_count:
    .long 0

    .global solar_shunt_voltage
solar_shunt_voltage:
    .skip DATA_ARRAY_SIZE

    .global solar_bus_voltage
solar_bus_voltage:
    .skip DATA_ARRAY_SIZE

    .global battery_shunt_voltage
battery_shunt_voltage:
    .skip DATA_ARRAY_SIZE

    .global battery_bus_voltage
battery_bus_voltage:
    .skip DATA_ARRAY_SIZE

    /* Code goes into .text section */
    .text
    .global entry
entry:
    /* Initialize Stack */
    stack_init
    /* Read INA219 */
    rcall process_ina219
    /* Increment sample count */
    move r1, ina219_sample_count
    ld r0, r1, 0
    add r0, r0, 1
    st r0, r1, 0
    jumpr wait_next_sample, N_DATA_SIZE, lt
    move r0, 0
    st r0, r1, 0
    jump wake_up
wait_next_sample:
    halt

process_ina219:
    rcall ina219_init
    /*
     * Dev1 MODE Power Up
     *    R0 : Device ID
     *    R1 : Mode (see datasheet) is 0x3
     */
    move r0, SOLAR_INA219_DEV_ID
    move r1, 3  // Shunt and bus, trigger
    rcall ina219_set_mode
    move r0, BATTERY_INA219_DEV_ID
    move r1, 3  // Shunt and bus, trigger
    rcall ina219_set_mode
    /* Delay for minimum of 68.14ms */
    //  68.14ms = (2 + cycles + 4)(8MHz)
    //  cycle = 272,554
    wait 0xFFFF
    wait 0xFFFF
    wait 0xFFFF
    wait 0xFFFF
    wait 0xFFFF
    wait 0xFFFF
    wait 0xFFFF
    wait 0xFFFF
    wait 20826

    /* Read Solar Shunt Voltage */
    move r0, SOLAR_INA219_DEV_ID
    rcall ina219_read_shunt_voltage
    push r0
    move r1, ina219_sample_count
    ld r0, r1, 0
    move r1, solar_shunt_voltage
    add r1, r0, r1
    pop r0
    st r0, r1, 0
    /* Read Solar Bus Voltage */
    move r0, SOLAR_INA219_DEV_ID
    rcall ina219_read_bus_voltage
    push r0
    move r1, ina219_sample_count
    ld r0, r1, 0
    move r1, solar_bus_voltage
    add r1, r0, r1
    pop r0
    st r0, r1, 0

    /* Read Battery Shunt Voltage */
    move r0, BATTERY_INA219_DEV_ID
    rcall ina219_read_shunt_voltage
    push r0
    move r1, ina219_sample_count
    ld r0, r1, 0
    move r1, battery_shunt_voltage
    add r1, r0, r1
    pop r0
    st r0, r1, 0
    /* Read Battery Bus Voltage */
    move r0, BATTERY_INA219_DEV_ID
    rcall ina219_read_bus_voltage
    push r0
    move r1, ina219_sample_count
    ld r0, r1, 0
    move r1, battery_bus_voltage
    add r1, r0, r1
    pop r0
    st r0, r1, 0

    /*
     * Dev1 MODE Power Down
     *    R0 : Device ID
     *    R1 : Mode (see datasheet) is 0x0
     */
    move r0, SOLAR_INA219_DEV_ID
    move r1, 0  // Power down
    rcall ina219_set_mode
    move r0, BATTERY_INA219_DEV_ID
    move r1, 0  // Power down
    rcall ina219_set_mode
    ret
