# 2025-07-20T13:50:19.423881300
import vitis

client = vitis.create_client()
client.set_workspace(path="reconstructv1maxi")

comp = client.get_component(name="hls_component")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="PACKAGE")

status = client.export_projects(components = ["hls_component"], system_projects = [], include_build_dir = False, dest = "F:\LMU\quantumMA\opimization\reconstructv1maxi\archive.zip")

comp.run(operation="IMPLEMENTATION")

