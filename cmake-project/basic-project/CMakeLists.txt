cmake_minimum_required(VERSION 3.6)
project(basic-project LANGUAGES C CXX ASM)

set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -T ${CMAKE_SOURCE_DIR}/ldscript/STM32F411RETx_FLASH.ld")

add_executable(basic-project.elf src/main.cpp startup/sysmem.c startup/startup_stm32.s)
set_target_properties(basic-project.elf PROPERTIES LINK_DEPENDS ${CMAKE_SOURCE_DIR}/ldscript/STM32F411RETx_FLASH.ld)

add_custom_target(size ALL 
    COMMAND ${CMAKE_SIZE_UTIL} --format=berkeley basic-project.elf
    DEPENDS basic-project.elf
    VERBATIM
)

add_custom_target(bin ALL 
    COMMAND ${CMAKE_OBJCOPY} -O ihex basic-project.elf basic-project.hex
    COMMAND ${CMAKE_OBJCOPY} -O binary basic-project.elf basic-project.bin
    DEPENDS size 
    VERBATIM
)

add_custom_target(flash 
    COMMAND openocd -f board/st_nucleo_f4.cfg -c "init;reset halt;flash write_image erase basic-project.bin 0x08000000;reset;shutdown" 
    DEPENDS bin
    VERBATIM
)
