cmake_minimum_required (VERSION 3.13)

project (
  tinyusb_demo
  VERSION 0.15.0
  LANGUAGES C ASM)

if (NOT CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME)
  message (FATAL_ERROR "Do not include this file from other projects. use add_subdirectory(path/src)")
endif ()

set (CFG_TUD_CDC on)
set (TU_USB_LL "st/stm32_fsdev")
set (CFG_TUSB_MCU "OPT_MCU_STM32F0")

add_subdirectory (src)
