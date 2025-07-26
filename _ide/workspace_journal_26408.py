# 2025-07-05T00:52:58.075199500
import vitis

client = vitis.create_client()
client.set_workspace(path="reconstructv1maxi")

comp = client.get_component(name="hls_component")
comp.run(operation="SYNTHESIS")

vitis.dispose()

