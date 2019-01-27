################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Utilities/STM32F4xx-Nucleo/stm32f4xx_nucleo.c 

OBJS += \
./Utilities/STM32F4xx-Nucleo/stm32f4xx_nucleo.o 

C_DEPS += \
./Utilities/STM32F4xx-Nucleo/stm32f4xx_nucleo.d 


# Each subdirectory must supply rules for building sources it contributes
Utilities/STM32F4xx-Nucleo/%.o: ../Utilities/STM32F4xx-Nucleo/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -ffunction-sections -DNDEBUG -DSTM32 -DSTM32F4 -DSTM32F411RETx -DNUCLEO_F411RE -DSTM32F411xE -DUSE_HAL_DRIVER -I"/home/jucom/Development/gnu-mcu-workspace/EXTI_ToggleLedOnIT_CPP17/CMSIS/core" -I"/home/jucom/Development/gnu-mcu-workspace/EXTI_ToggleLedOnIT_CPP17/CMSIS/device" -I"/home/jucom/Development/gnu-mcu-workspace/EXTI_ToggleLedOnIT_CPP17/HAL_Driver/Inc" -I"/home/jucom/Development/gnu-mcu-workspace/EXTI_ToggleLedOnIT_CPP17/HAL_Driver/Inc/Legacy" -I"/home/jucom/Development/gnu-mcu-workspace/EXTI_ToggleLedOnIT_CPP17/inc" -I"/home/jucom/Development/gnu-mcu-workspace/EXTI_ToggleLedOnIT_CPP17/mhai/core" -I"/home/jucom/Development/gnu-mcu-workspace/EXTI_ToggleLedOnIT_CPP17/mhai/device" -I"/home/jucom/Development/gnu-mcu-workspace/EXTI_ToggleLedOnIT_CPP17/Utilities/STM32F4xx-Nucleo" -std=c11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


