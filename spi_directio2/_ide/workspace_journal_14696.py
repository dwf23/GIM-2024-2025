# 2025-02-17T22:21:18.889367500
import vitis

client = vitis.create_client()
client.set_workspace(path="spi_directio2")

comp = client.create_hls_component(name = "spi_master",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="spi_master")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

