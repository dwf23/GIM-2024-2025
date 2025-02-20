# 2025-02-20T11:23:11.521280800
import vitis

client = vitis.create_client()
client.set_workspace(path="hls_ltr")

vitis.dispose()

