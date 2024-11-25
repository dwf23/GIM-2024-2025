#line 2 "lop-config.dts"
/dts-v1/;
/ {
        compatible = "system-device-tree-v1,lop";
        lops {
                lop_0 {
                        compatible = "system-device-tree-v1,lop,load";
                        load = "assists/baremetal_validate_comp_xlnx.py";
                };

                lop_1 {
                    compatible = "system-device-tree-v1,lop,assist-v1";
                    node = "/";
                    outdir = "C:/GIM_XOR/GIM-2024-2025/gim_cpp_final/platform2/zynqmp_fsbl/zynqmp_fsbl_bsp";
                    id = "module,baremetal_validate_comp_xlnx";
                    options = "psu_cortexa53_0 C:/Xilinx/Vitis/2024.1/data/embeddedsw/lib/sw_services/xilffs_v5_2/src C:/GIM_XOR/GIM-2024-2025/gim_cpp_final/.wsdata/.repo.yaml";
                };

                lop_2 {
                    compatible = "system-device-tree-v1,lop,assist-v1";
                    node = "/";
                    outdir = "C:/GIM_XOR/GIM-2024-2025/gim_cpp_final/platform2/zynqmp_fsbl/zynqmp_fsbl_bsp";
                    id = "module,baremetal_validate_comp_xlnx";
                    options = "psu_cortexa53_0 C:/Xilinx/Vitis/2024.1/data/embeddedsw/lib/sw_services/xilsecure_v5_3/src C:/GIM_XOR/GIM-2024-2025/gim_cpp_final/.wsdata/.repo.yaml";
                };

                lop_3 {
                    compatible = "system-device-tree-v1,lop,assist-v1";
                    node = "/";
                    outdir = "C:/GIM_XOR/GIM-2024-2025/gim_cpp_final/platform2/zynqmp_fsbl/zynqmp_fsbl_bsp";
                    id = "module,baremetal_validate_comp_xlnx";
                    options = "psu_cortexa53_0 C:/Xilinx/Vitis/2024.1/data/embeddedsw/lib/sw_services/xilpm_v5_2/src C:/GIM_XOR/GIM-2024-2025/gim_cpp_final/.wsdata/.repo.yaml";
                };

        };
    };
