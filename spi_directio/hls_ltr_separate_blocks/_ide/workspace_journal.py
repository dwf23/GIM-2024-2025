# 2025-02-25T14:35:42.193788200
import vitis

client = vitis.create_client()
client.set_workspace(path="hls_ltr_separate_blocks")

vitis.dispose()

