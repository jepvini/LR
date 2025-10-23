# My Ardupilot settings for Stratos

### Usage

All the lines following the form `- word,number ->` (`^- .+,\d+ ->`)are parsed to a `.param` file

### Component list

- FC: [SpeedyBee F405 WING MINI](https://www.speedybee.com/speedybee-f405-wing-mini-fixed-wing-flight-controller)
- RadioRX:
  [Happy Model EP1 RX](https://www.happymodel.cn/index.php/2021/04/10/happymodel-2-4g-expresslrs-elrs-nano-series-receiver-module-pp-rx-ep1-rx-ep2-rx/)
- GSRX: [Mateksys MR900-30](https://www.mateksys.com/?portfolio=mr900-30)

#### [`Ardupilot FC guide`](https://ardupilot.org/plane/docs/common-speedybeef405wing.html)

## Firmware

- Download Link:
  [link](https://firmware.ardupilot.org/Plane/stable-4.5.7/SpeedyBeeF405WING/)
- Name: Ardupilot Plane
- Version: 4.5.7
- Label: SpeedyBeeF405WING

## FC connections

- UART1-SERIAL1: RadioRx
- UART3-SERIAL3: GPS
- UART4-SERIAL4: GC-Rx
- UART6-SERIAL6: Tied to internal wireless module

## Parameters

#### [`Full Parameters List`](https://ardupilot.org/plane/docs/parameters.html)

*FC*

- AHRS_ORIENTATION,20 -> fc rolled by 270 deg
- ARMING_CHECK,0 -> **to be changed**

*SERIAL 1*

- SERIAL1_BAUD,115 -> elrs documentation

*SERIAL 4*

- SERIAL4_BAUD,57 -> mlrs documentation
- SERIAL4_PROTOCOL,2 -> mavilink2

*FLTMODE*

- FLTMODE_CH,12 -> elrs documentation
- FLTMODE1,10 -> auto

*ARSPD*

- ARSPD_TYPE,0 -> disables airspeed sensor since I don't have a pitot

*AUTOTUNE*

- AUTOTUNE_LEVEL,7 -> more aggressive
- SCHED_LOOP_RATE,200 -> higher PID rate
- INS_GYRO_FILTER,40 -> higher gyro filter

*LIMIT*

- ROLL_LIMIT_DEG,70 -> the plane has no rudder
- PTCH_LIM_MIN_DEG,30 -> the plane is really light
- PTCH_LIM_MAX_DEG,45 -> big motor
