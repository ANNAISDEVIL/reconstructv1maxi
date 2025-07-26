# 2025-07-13T16:18:54.194941900
import vitis

client = vitis.create_client()
client.set_workspace(path="reconstructv1maxi")

comp = client.get_component(name="hls_component")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

vitis.dispose()

