# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "C:\\testing_comm\\spi_directio\\platform\\psu_cortexa53_0\\standalone_psu_cortexa53_0\\bsp\\include\\sleep.h"
  "C:\\testing_comm\\spi_directio\\platform\\psu_cortexa53_0\\standalone_psu_cortexa53_0\\bsp\\include\\xiltimer.h"
  "C:\\testing_comm\\spi_directio\\platform\\psu_cortexa53_0\\standalone_psu_cortexa53_0\\bsp\\include\\xtimer_config.h"
  "C:\\testing_comm\\spi_directio\\platform\\psu_cortexa53_0\\standalone_psu_cortexa53_0\\bsp\\lib\\libxiltimer.a"
  )
endif()
