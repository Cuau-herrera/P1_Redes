################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../framework/XCVR/MKW41Z4/dbg_ram_capture.c \
../framework/XCVR/MKW41Z4/fsl_xcvr.c \
../framework/XCVR/MKW41Z4/fsl_xcvr_trim.c \
../framework/XCVR/MKW41Z4/ifr_radio.c 

C_DEPS += \
./framework/XCVR/MKW41Z4/dbg_ram_capture.d \
./framework/XCVR/MKW41Z4/fsl_xcvr.d \
./framework/XCVR/MKW41Z4/fsl_xcvr_trim.d \
./framework/XCVR/MKW41Z4/ifr_radio.d 

OBJS += \
./framework/XCVR/MKW41Z4/dbg_ram_capture.o \
./framework/XCVR/MKW41Z4/fsl_xcvr.o \
./framework/XCVR/MKW41Z4/fsl_xcvr_trim.o \
./framework/XCVR/MKW41Z4/ifr_radio.o 


# Each subdirectory must supply rules for building sources it contributes
framework/XCVR/MKW41Z4/%.o: ../framework/XCVR/MKW41Z4/%.c framework/XCVR/MKW41Z4/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MKW41Z512VHT4_cm0plus -DCPU_MKW41Z512VHT4 -DFSL_RTOS_FREE_RTOS -DFRDM_KW41Z -DFREEDOM -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"/Users/yadin/Documents/2026/Redes/preuba/source" -I"/Users/yadin/Documents/2026/Redes/preuba" -I"/Users/yadin/Documents/2026/Redes/preuba/CMSIS" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/OSAbstraction/Interface" -I"/Users/yadin/Documents/2026/Redes/preuba/freertos" -I"/Users/yadin/Documents/2026/Redes/preuba/ieee_802.15.4/mac/source/App" -I"/Users/yadin/Documents/2026/Redes/preuba/ieee_802.15.4/mac/interface" -I"/Users/yadin/Documents/2026/Redes/preuba/ieee_802.15.4/phy/interface" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/GPIO" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/Keyboard/Interface" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/LED/Interface" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/SerialManager/Source/SPI_Adapter" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/SerialManager/Source/UART_Adapter" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/SerialManager/Source/I2C_Adapter" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/Flash/Internal" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/common" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/MemManager/Interface" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/Messaging/Interface" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/Panic/Interface" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/RNG/Interface" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/SerialManager/Interface" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/TimersManager/Interface" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/TimersManager/Source" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/ModuleInfo" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/FunctionLib" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/Lists" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/SecLib" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/MWSCoexistence/Interface" -I"/Users/yadin/Documents/2026/Redes/preuba/drivers" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/DCDC/Interface" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/XCVR/MKW41Z4" -I"/Users/yadin/Documents/2026/Redes/preuba/ieee_802.15.4/phy/source/MKW41Z" -I"/Users/yadin/Documents/2026/Redes/preuba/utilities" -I"/Users/yadin/Documents/2026/Redes/preuba/board" -O0 -fno-common -g -gdwarf-4 -Wall -c  -ffunction-sections  -fdata-sections  -ffreestanding  -fno-builtin -imacros "/Users/yadin/Documents/2026/Redes/preuba/source/app_preinclude.h" -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-framework-2f-XCVR-2f-MKW41Z4

clean-framework-2f-XCVR-2f-MKW41Z4:
	-$(RM) ./framework/XCVR/MKW41Z4/dbg_ram_capture.d ./framework/XCVR/MKW41Z4/dbg_ram_capture.o ./framework/XCVR/MKW41Z4/fsl_xcvr.d ./framework/XCVR/MKW41Z4/fsl_xcvr.o ./framework/XCVR/MKW41Z4/fsl_xcvr_trim.d ./framework/XCVR/MKW41Z4/fsl_xcvr_trim.o ./framework/XCVR/MKW41Z4/ifr_radio.d ./framework/XCVR/MKW41Z4/ifr_radio.o

.PHONY: clean-framework-2f-XCVR-2f-MKW41Z4

