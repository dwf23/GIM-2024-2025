# 2025-02-07T18:30:16.144586300
import vitis

client = vitis.create_client()
client.set_workspace(path="ap_hs")

comp = client.create_hls_component(name = "spi_master_logic",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

vitis.dispose()

