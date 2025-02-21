# 2025-02-21T08:48:18.282255900
import vitis

client = vitis.create_client()
client.set_workspace(path="hls_ltr")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="example_acc_file")
comp.build()

status = platform.build()

comp.build()

vitis.dispose()

