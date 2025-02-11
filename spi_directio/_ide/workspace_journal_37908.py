# 2025-02-09T20:35:31.019024300
import vitis

client = vitis.create_client()
client.set_workspace(path="spi_directio")

comp = client.get_component(name="spi_master_logic")
comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

comp = client.get_component(name="spi_master")
comp.run(operation="SYNTHESIS")

status = comp.remove_cfg_files(cfg_files=["hls_config.cfg"])

status = comp.add_cfg_files(cfg_files=["hls_config.cfg"])

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

vitis.dispose()

