# 2025-02-25T09:22:57.470925400
import vitis

client = vitis.create_client()
client.set_workspace(path="hls_ltr_separate_blocks")

vitis.dispose()

