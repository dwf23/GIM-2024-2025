# 2025-02-20T11:24:46.049120500
import vitis

client = vitis.create_client()
client.set_workspace(path="hls_ltr")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../project_1/design_1_wrapper.xsa",os = "standalone",cpu = "psu_cortexa53_0",domain_name = "standalone_psu_cortexa53_0")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.create_app_component(name="example_acc_file",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_psu_cortexa53_0")

comp = client.get_component(name="example_acc_file")
status = comp.import_files(from_loc="$COMPONENT_LOCATION/..", files=["accelerator.cc", "accelerator_io.cc"], dest_dir_in_cmp = "src")

status = platform.build()

comp = client.get_component(name="example_acc_file")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

comp = client.get_component(name="example_acc_file")
status = comp.import_files(from_loc="$COMPONENT_LOCATION/..", files=["GIM_comm.h"], dest_dir_in_cmp = "src")

status = platform.build()

comp = client.get_component(name="example_acc_file")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

client.delete_component(name="example_acc_file")

comp = client.create_app_component(name="example_acc_file",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_psu_cortexa53_0")

comp = client.get_component(name="example_acc_file")
status = comp.import_files(from_loc="", files=["C:\GIM\hls_ltr\example_acc.cpp"])

status = platform.build()

comp = client.get_component(name="example_acc_file")
comp.build()

client.delete_component(name="example_acc_file")

comp = client.create_app_component(name="example_acc_file",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_psu_cortexa53_0")

comp = client.get_component(name="example_acc_file")
status = comp.import_files(from_loc="", files=["C:\GIM\hls_ltr\accelerator.cc"])

status = platform.build()

comp = client.get_component(name="example_acc_file")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

client.delete_component(name="example_acc_file")

comp = client.create_app_component(name="example_acc_file",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_psu_cortexa53_0")

comp = client.get_component(name="example_acc_file")
status = comp.import_files(from_loc="$COMPONENT_LOCATION/..", files=["accelerator.cc"], dest_dir_in_cmp = "src")

client.delete_component(name="example_acc_file")

comp = client.create_app_component(name="example_acc_file",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_psu_cortexa53_0")

status = comp.import_files(from_loc="$COMPONENT_LOCATION/..", files=["accelerator.cc"], dest_dir_in_cmp = "src")

status = platform.build()

comp = client.get_component(name="example_acc_file")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

