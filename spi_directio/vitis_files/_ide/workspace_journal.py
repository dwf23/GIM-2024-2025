# 2025-02-07T18:38:20.052291700
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_files")

comp = client.create_hls_component(name = "spi_master_logic",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="spi_master_logic")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="CO_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="CO_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="C_SIMULATION_DEBUG")

comp.run(operation="CO_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="CO_SIMULATION")

comp.run(operation="CO_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="CO_SIMULATION")

comp.run(operation="CO_SIMULATION")

comp.run(operation="CO_SIMULATION")

comp.run(operation="CO_SIMULATION")

comp.run(operation="CO_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

vitis.dispose()

