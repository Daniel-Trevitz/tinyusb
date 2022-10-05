set (CFG_TUD_ENABLED OFF)

if (CFG_TUD_AUDIO)
  set (CFG_TUD_ENABLED ON)
  list (APPEND TU_FILES
    class/audio/audio.h
    class/audio/audio_device.c
    class/audio/audio_device.h
  )
endif ()

if (CFG_TUD_BTH)
  set (CFG_TUD_ENABLED ON)
  list (APPEND TU_FILES
    class/bth/bth_device.h
    class/bth/bth_device.c
  )
endif ()

if (CFG_TUD_CDC)
  set (CFG_TUD_ENABLED ON)
  list (APPEND TU_FILES
    class/cdc/cdc.h
    class/cdc/cdc_device.h
    class/cdc/cdc_device.c
  )
endif ()

if (CFG_TUD_DFU)
  set (CFG_TUD_ENABLED ON)
  list (APPEND TU_FILES
    class/dfu/dfu.h
    class/dfu/dfu_device.h
    class/dfu/dfu_device.c
  )
endif ()

if (CFG_TUD_DFU_RUNTIME)
  set (CFG_TUD_ENABLED ON)
  list (APPEND TU_FILES
    class/dfu/dfu.h
    class/dfu/dfu_rt_device.h
    class/dfu/dfu_rt_device.c
  )
endif ()

if (CFG_TUD_HID)
  set (CFG_TUD_ENABLED ON)
  list (APPEND TU_FILES
    class/hid/hid.h
    class/hid/hid_device.h
    class/hid/hid_device.c
  )
endif ()

if (CFG_TUD_MIDI)
  set (CFG_TUD_ENABLED ON)
  list (APPEND TU_FILES
    class/midi/midi.h
    class/midi/midi_device.h
    class/midi/midi_device.c
  )
endif ()

if (CFG_TUD_MSC)
  set (CFG_TUD_ENABLED ON)
  list (APPEND TU_FILES
    class/msc/msc.h
    class/msc/msc_device.h
    class/msc/msc_device.c
  )
endif ()

if (CFG_TUD_ECM_RNDIS)
  set (CFG_TUD_NCM ON)
  set (CFG_TUD_ENABLED ON)
  list (APPEND TU_FILES
    class/net/ecm_rndis_device.c
  )
endif ()

if (CFG_TUD_NCM)
  set (CFG_TUD_ENABLED ON)
  list (APPEND TU_FILES
    class/net/ncm.h
    class/net/net_device.h
    class/net/ncm_device.c
  )
endif ()

if (CFG_TUD_USBTMC)
  set (CFG_TUD_ENABLED ON)
  list (APPEND TU_FILES
    class/usbtmc/usbtmc.h
    class/usbtmc/usbtmc_device.c
    class/usbtmc/usbtmc_device.h
  )
endif ()

if (CFG_TUD_VENDOR)
  set (CFG_TUD_ENABLED ON)
  list (APPEND TU_FILES
    class/vendor/vendor_device.c
    class/vendor/vendor_device.h
  )
endif ()

if (CFG_TUD_VIDEO)
  set (CFG_TUD_ENABLED ON)
  list (APPEND TU_FILES
    class/video/video.h
    class/video/video_device.c
    class/video/video_device.h
  )
endif ()

if (CFG_TUD_ENABLED)
  list (APPEND TU_FILES
    device/dcd.h
    device/usbd_pvt.h
    device/usbd.h
    device/usbd_control.c
    device/usbd.c
  )
endif ()
