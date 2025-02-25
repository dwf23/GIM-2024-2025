# 2025-02-24T11:27:45.752047800
import vitis

client = vitis.create_client()
client.set_workspace(path="hls_ltr_separate_blocks")

vitis.dispose()

comp = client.get_component(name="send_data")
comp.run(operation="CO_SIMULATION")

comp.run(operation="CO_SIMULATION")

comp.run(operation="CO_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="CO_SIMULATION")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

comp = client.create_hls_component(name = "example_acc",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="example_acc")
comp.run(operation="C_SIMULATION")

