################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/system_stm32f4xx.c 

CPP_SRCS += \
../src/main.cpp \
../src/stm32f4xx_it.cpp 

OBJS += \
./src/main.o \
./src/stm32f4xx_it.o \
./src/system_stm32f4xx.o 

C_DEPS += \
./src/system_stm32f4xx.d 

CPP_DEPS += \
./src/main.d \
./src/stm32f4xx_it.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -ffunction-sections -DNDEBUG -DSTM32 -DSTM32F4 -DSTM32F411RETx -DNUCLEO_F411RE -DSTM32F411xE -DUSE_HAL_DRIVER -I"/home/jucom/Development/gnu-mcu-workspace/EXTI_ToggleLedOnIT_CPP17/CMSIS/core" -I"/home/jucom/Development/gnu-mcu-workspace/EXTI_ToggleLedOnIT_CPP17/CMSIS/device" -I"/home/jucom/Development/gnu-mcu-workspace/EXTI_ToggleLedOnIT_CPP17/HAL_Driver/Inc" -I"/home/jucom/Development/gnu-mcu-workspace/EXTI_ToggleLedOnIT_CPP17/HAL_Driver/Inc/Legacy" -I"/home/jucom/Development/gnu-mcu-workspace/EXTI_ToggleLedOnIT_CPP17/inc" -I"/home/jucom/Development/gnu-mcu-workspace/EXTI_ToggleLedOnIT_CPP17/mhai/core" -I"/home/jucom/Development/gnu-mcu-workspace/EXTI_ToggleLedOnIT_CPP17/mhai/device" -I"/home/jucom/Development/gnu-mcu-workspace/EXTI_ToggleLedOnIT_CPP17/Utilities/STM32F4xx-Nucleo" -std=c++17 -fabi-version=0 -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fno-threadsafe-statics -Wno-register -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -ffunction-sections -DNDEBUG -DSTM32 -DSTM32F4 -DSTM32F411RETx -DNUCLEO_F411RE -DSTM32F411xE -DUSE_HAL_DRIVER -I"/home/jucom/Development/gnu-mcu-workspace/EXTI_ToggleLedOnIT_CPP17/CMSIS/core" -I"/home/jucom/Development/gnu-mcu-workspace/EXTI_ToggleLedOnIT_CPP17/CMSIS/device" -I"/home/jucom/Development/gnu-mcu-workspace/EXTI_ToggleLedOnIT_CPP17/HAL_Driver/Inc" -I"/home/jucom/Development/gnu-mcu-workspace/EXTI_ToggleLedOnIT_CPP17/HAL_Driver/Inc/Legacy" -I"/home/jucom/Development/gnu-mcu-workspace/EXTI_ToggleLedOnIT_CPP17/inc" -I"/home/jucom/Development/gnu-mcu-workspace/EXTI_ToggleLedOnIT_CPP17/mhai/core" -I"/home/jucom/Development/gnu-mcu-workspace/EXTI_ToggleLedOnIT_CPP17/mhai/device" -I"/home/jucom/Development/gnu-mcu-workspace/EXTI_ToggleLedOnIT_CPP17/Utilities/STM32F4xx-Nucleo" -std=c11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


