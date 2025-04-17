# 2025-02-20T17:49:36.927113400
import vitis

client = vitis.create_client()
client.set_workspace(path="hls_ltr")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="example_acc_file")
comp.build()

vitis.dispose()

