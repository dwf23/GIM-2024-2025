# 2025-02-11T15:26:07.463954900
import vitis

client = vitis.create_client()
client.set_workspace(path="spi_directio")

vitis.dispose()

