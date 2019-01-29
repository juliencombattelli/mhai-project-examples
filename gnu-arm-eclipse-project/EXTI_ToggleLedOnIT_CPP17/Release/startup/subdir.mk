################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../startup/startup_stm32f411xe.S 

OBJS += \
./startup/startup_stm32f411xe.o 

S_UPPER_DEPS += \
./startup/startup_stm32f411xe.d 


# Each subdirectory must supply rules for building sources it contributes
startup/%.o: ../startup/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross Assembler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -ffunction-sections -x assembler-with-cpp -DNDEBUG -DSTM32 -DSTM32F4 -DSTM32F411RETx -DNUCLEO_F411RE -DSTM32F411xE -DUSE_HAL_DRIVER -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


