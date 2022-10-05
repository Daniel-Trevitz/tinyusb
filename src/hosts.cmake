set (CFG_TUH_ENABLED OFF)

if (CFG_TUH_HUB)
  set (CFG_TUH_ENABLED ON)
  list (APPEND TU_FILES
    host/hub.h
    host/hub.c
  )
endif ()

if (CFG_TUH_CDC)
  set (CFG_TUH_ENABLED ON)
  list (APPEND TU_FILES
    class/cdc/cdc.h
    class/cdc/cdc_host.c
    class/cdc/cdc_host.h
  )
endif ()

if (CFG_TUH_CDC_RNDIS)
  set (CFG_TUH_ENABLED ON)
  list (APPEND TU_FILES
    class/cdc/cdc.h
    class/cdc/cdc_rndis.h
    class/cdc/cdc_rndis_host.c
    class/cdc/cdc_rndis_host.h
  )
endif ()

if (CFG_TUH_HID)
  set (CFG_TUH_ENABLED ON)
  list (APPEND TU_FILES
    class/hid/hid.h
    class/hid/hid_host.c
    class/hid/hid_host.h
  )
endif ()

if (CFG_TUH_MSC)
  set (CFG_TUH_ENABLED ON)
  list (APPEND TU_FILES
    class/msc/msc.h
    class/msc/msc_host.c
    class/msc/msc_host.h
  )
endif ()

if (CFG_TUH_VENDOR)
  set (CFG_TUH_ENABLED ON)
  list (APPEND TU_FILES
    class/vendor/vendor_host.h
    class/vendor/vendor_host.c
  )
endif ()

if (CFG_TUH_ENABLED)
    list (APPEND TU_FILES
      host/hcd.h
      host/usbh_classdriver.h
      host/usbh.h
      host/usbh.c
    )
endif ()
