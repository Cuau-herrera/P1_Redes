################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ieee_802.15.4/phy/source/MKW41Z/ASP.c \
../ieee_802.15.4/phy/source/MKW41Z/MPM.c \
../ieee_802.15.4/phy/source/MKW41Z/PhyISR.c \
../ieee_802.15.4/phy/source/MKW41Z/PhyPacketProcessor.c \
../ieee_802.15.4/phy/source/MKW41Z/PhyPlmeData.c \
../ieee_802.15.4/phy/source/MKW41Z/PhyStateMachine.c \
../ieee_802.15.4/phy/source/MKW41Z/PhyTime.c 

C_DEPS += \
./ieee_802.15.4/phy/source/MKW41Z/ASP.d \
./ieee_802.15.4/phy/source/MKW41Z/MPM.d \
./ieee_802.15.4/phy/source/MKW41Z/PhyISR.d \
./ieee_802.15.4/phy/source/MKW41Z/PhyPacketProcessor.d \
./ieee_802.15.4/phy/source/MKW41Z/PhyPlmeData.d \
./ieee_802.15.4/phy/source/MKW41Z/PhyStateMachine.d \
./ieee_802.15.4/phy/source/MKW41Z/PhyTime.d 

OBJS += \
./ieee_802.15.4/phy/source/MKW41Z/ASP.o \
./ieee_802.15.4/phy/source/MKW41Z/MPM.o \
./ieee_802.15.4/phy/source/MKW41Z/PhyISR.o \
./ieee_802.15.4/phy/source/MKW41Z/PhyPacketProcessor.o \
./ieee_802.15.4/phy/source/MKW41Z/PhyPlmeData.o \
./ieee_802.15.4/phy/source/MKW41Z/PhyStateMachine.o \
./ieee_802.15.4/phy/source/MKW41Z/PhyTime.o 


# Each subdirectory must supply rules for building sources it contributes
ieee_802.15.4/phy/source/MKW41Z/%.o: ../ieee_802.15.4/phy/source/MKW41Z/%.c ieee_802.15.4/phy/source/MKW41Z/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MKW41Z512VHT4_cm0plus -DCPU_MKW41Z512VHT4 -DFSL_RTOS_FREE_RTOS -DFRDM_KW41Z -DFREEDOM -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"/Users/yadin/Documents/2026/Redes/preuba/source" -I"/Users/yadin/Documents/2026/Redes/preuba" -I"/Users/yadin/Documents/2026/Redes/preuba/CMSIS" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/OSAbstraction/Interface" -I"/Users/yadin/Documents/2026/Redes/preuba/freertos" -I"/Users/yadin/Documents/2026/Redes/preuba/ieee_802.15.4/mac/source/App" -I"/Users/yadin/Documents/2026/Redes/preuba/ieee_802.15.4/mac/interface" -I"/Users/yadin/Documents/2026/Redes/preuba/ieee_802.15.4/phy/interface" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/GPIO" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/Keyboard/Interface" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/LED/Interface" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/SerialManager/Source/SPI_Adapter" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/SerialManager/Source/UART_Adapter" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/SerialManager/Source/I2C_Adapter" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/Flash/Internal" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/common" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/MemManager/Interface" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/Messaging/Interface" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/Panic/Interface" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/RNG/Interface" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/SerialManager/Interface" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/TimersManager/Interface" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/TimersManager/Source" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/ModuleInfo" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/FunctionLib" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/Lists" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/SecLib" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/MWSCoexistence/Interface" -I"/Users/yadin/Documents/2026/Redes/preuba/drivers" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/DCDC/Interface" -I"/Users/yadin/Documents/2026/Redes/preuba/framework/XCVR/MKW41Z4" -I"/Users/yadin/Documents/2026/Redes/preuba/ieee_802.15.4/phy/source/MKW41Z" -I"/Users/yadin/Documents/2026/Redes/preuba/utilities" -I"/Users/yadin/Documents/2026/Redes/preuba/board" -O0 -fno-common -g -gdwarf-4 -Wall -c  -ffunction-sections  -fdata-sections  -ffreestanding  -fno-builtin -imacros "/Users/yadin/Documents/2026/Redes/preuba/source/app_preinclude.h" -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ieee_802-2e-15-2e-4-2f-phy-2f-source-2f-MKW41Z

clean-ieee_802-2e-15-2e-4-2f-phy-2f-source-2f-MKW41Z:
	-$(RM) ./ieee_802.15.4/phy/source/MKW41Z/ASP.d ./ieee_802.15.4/phy/source/MKW41Z/ASP.o ./ieee_802.15.4/phy/source/MKW41Z/MPM.d ./ieee_802.15.4/phy/source/MKW41Z/MPM.o ./ieee_802.15.4/phy/source/MKW41Z/PhyISR.d ./ieee_802.15.4/phy/source/MKW41Z/PhyISR.o ./ieee_802.15.4/phy/source/MKW41Z/PhyPacketProcessor.d ./ieee_802.15.4/phy/source/MKW41Z/PhyPacketProcessor.o ./ieee_802.15.4/phy/source/MKW41Z/PhyPlmeData.d ./ieee_802.15.4/phy/source/MKW41Z/PhyPlmeData.o ./ieee_802.15.4/phy/source/MKW41Z/PhyStateMachine.d ./ieee_802.15.4/phy/source/MKW41Z/PhyStateMachine.o ./ieee_802.15.4/phy/source/MKW41Z/PhyTime.d ./ieee_802.15.4/phy/source/MKW41Z/PhyTime.o

.PHONY: clean-ieee_802-2e-15-2e-4-2f-phy-2f-source-2f-MKW41Z

