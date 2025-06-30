# 2025-06-25T22:44:30.284319400
import vitis

client = vitis.create_client()
client.set_workspace(path="reconstructv1maxi")

comp = client.get_component(name="hls_component")
comp.run(operation="CO_SIMULATION")

vitis.dispose()

vitis.dispose()

