# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "C:\\GIM_XOR\\GIM-2024-2025\\gim_cpp_final\\platform2\\psu_cortexa53_0\\standalone_psu_cortexa53_0\\bsp\\include\\sleep.h"
  "C:\\GIM_XOR\\GIM-2024-2025\\gim_cpp_final\\platform2\\psu_cortexa53_0\\standalone_psu_cortexa53_0\\bsp\\include\\xiltimer.h"
  "C:\\GIM_XOR\\GIM-2024-2025\\gim_cpp_final\\platform2\\psu_cortexa53_0\\standalone_psu_cortexa53_0\\bsp\\include\\xtimer_config.h"
  "C:\\GIM_XOR\\GIM-2024-2025\\gim_cpp_final\\platform2\\psu_cortexa53_0\\standalone_psu_cortexa53_0\\bsp\\lib\\libxiltimer.a"
  )
endif()
