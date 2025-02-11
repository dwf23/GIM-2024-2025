# 2025-02-06T14:52:08.130707100
import vitis

client = vitis.create_client()
client.set_workspace(path="spi_directio")

comp = client.get_component(name="spi_master")
comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

vitis.dispose()

