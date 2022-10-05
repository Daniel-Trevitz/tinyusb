cmake_minimum_required(VERSION 3.13)

project(
  tinyusb
  VERSION 0.14.0
  LANGUAGES C)

set (TU_FILES
  common/tusb_common.h
  common/tusb_compiler.h
  common/tusb_debug.h
  common/tusb_fifo.h
  common/tusb_mcu.h
  common/tusb_private.h
  common/tusb_timeout.h
  common/tusb_types.h
  common/tusb_verify.h
  common/tusb_fifo.c

  osal/osal_freertos.h
  osal/osal_mynewt.h
  osal/osal_none.h
  osal/osal_pico.h
  osal/osal_rtthread.h
  osal/osal_rtx4.h
  osal/osal.h
)

# Read the options file to learn how to configure
include(options.cmake)
include(devices.cmake)
include(hosts.cmake)

include (portable/${TU_USB_LL}/CMakeLists.txt)
# To be lazy, the portable files are not correct paths. Fix that here
foreach (PORT_FILE IN LISTS TU_PORTABLE_FILES)
    list (APPEND TU_FILES portable/${TU_USB_LL}/${PORT_FILE})
endforeach ()

add_library (${PROJECT_NAME} STATIC ${TU_FILES})

target_include_directories (${PROJECT_NAME} PUBLIC ${CMAKE_CURRENT_BINARY_DIR})
target_include_directories (${PROJECT_NAME} PUBLIC ${CMAKE_CURRENT_LIST_DIR})
