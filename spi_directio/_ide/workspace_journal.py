# 2025-02-18T13:01:07.009147100
import vitis

client = vitis.create_client()
client.set_workspace(path="spi_directio")

vitis.dispose()

