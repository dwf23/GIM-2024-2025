# 2025-02-09T20:16:33.207856
import vitis

client = vitis.create_client()
client.set_workspace(path="spi_directio")

vitis.dispose()

