# 2025-02-05T18:19:24.463146400
import vitis

client = vitis.create_client()
client.set_workspace(path="ap_hs")

comp = client.create_hls_component(name = "spi_master",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="spi_master")
comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

