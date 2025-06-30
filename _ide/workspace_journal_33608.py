# 2025-06-21T20:16:48.265834
import vitis

client = vitis.create_client()
client.set_workspace(path="reconstructv1maxi")

comp = client.get_component(name="hls_component")
comp.run(operation="CO_SIMULATION")

