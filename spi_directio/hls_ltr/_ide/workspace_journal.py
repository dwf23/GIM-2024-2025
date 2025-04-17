# 2025-02-21T09:29:03.091032100
import vitis

client = vitis.create_client()
client.set_workspace(path="hls_ltr")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="example_acc_file")
comp.build()

