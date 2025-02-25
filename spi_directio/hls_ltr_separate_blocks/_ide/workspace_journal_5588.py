# 2025-02-21T12:09:30.189529500
import vitis

client = vitis.create_client()
client.set_workspace(path="hls_ltr_separate_blocks")

comp = client.get_component(name="send_data")
comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

