# 2025-07-03T23:26:49.255707
import vitis

client = vitis.create_client()
client.set_workspace(path="reconstructv1maxi")

comp = client.get_component(name="hls_component")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

vitis.dispose()

