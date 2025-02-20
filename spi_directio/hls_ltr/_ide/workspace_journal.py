# 2025-02-20T10:47:44.964922700
import vitis

client = vitis.create_client()
client.set_workspace(path="hls_ltr")

comp = client.create_hls_component(name = "example_acc",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="example_acc")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

