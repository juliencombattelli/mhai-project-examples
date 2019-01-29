################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include startup/subdir.mk
-include src/subdir.mk
-include Utilities/STM32F4xx-Nucleo/subdir.mk
-include HAL_Driver/Src/Legacy/subdir.mk
-include HAL_Driver/Src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
EXTI_ToggleLedOnIT_CPP17.hex \

SECONDARY_SIZE += \
EXTI_ToggleLedOnIT_CPP17.siz \


# All Target
all: EXTI_ToggleLedOnIT_CPP17.elf secondary-outputs

# Tool invocations
EXTI_ToggleLedOnIT_CPP17.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM Cross C++ Linker'
	arm-none-eabi-g++ -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O1 -ffunction-sections -T "/home/jucom/Development/gnu-mcu-workspace/EXTI_ToggleLedOnIT_CPP17/ldscript/STM32F411RETx_FLASH.ld" -Xlinker --gc-sections -Wl,-Map,"EXTI_ToggleLedOnIT_CPP17.map" -fno-exceptions -fno-rtti -o "EXTI_ToggleLedOnIT_CPP17.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

EXTI_ToggleLedOnIT_CPP17.hex: EXTI_ToggleLedOnIT_CPP17.elf
	@echo 'Invoking: GNU ARM Cross Create Flash Image'
	arm-none-eabi-objcopy -O ihex "EXTI_ToggleLedOnIT_CPP17.elf"  "EXTI_ToggleLedOnIT_CPP17.hex"
	@echo 'Finished building: $@'
	@echo ' '

EXTI_ToggleLedOnIT_CPP17.siz: EXTI_ToggleLedOnIT_CPP17.elf
	@echo 'Invoking: GNU ARM Cross Print Size'
	arm-none-eabi-size --format=berkeley "EXTI_ToggleLedOnIT_CPP17.elf"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(CC_DEPS)$(C++_DEPS)$(OBJS)$(C_UPPER_DEPS)$(CXX_DEPS)$(SECONDARY_FLASH)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_UPPER_DEPS)$(C_DEPS)$(CPP_DEPS) EXTI_ToggleLedOnIT_CPP17.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets
