# 2025-02-11T09:42:34.733933300
import vitis

client = vitis.create_client()
client.set_workspace(path="spi_directio")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../project_1/design_1_wrapper.xsa",os = "standalone",cpu = "psu_cortexa53_0",domain_name = "standalone_psu_cortexa53_0")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.create_app_component(name="spi_file",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_psu_cortexa53_0")

comp = client.get_component(name="spi_master")
comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION_DEBUG")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

