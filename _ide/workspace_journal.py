# 2025-08-23T17:06:49.153323200
import vitis

client = vitis.create_client()
client.set_workspace(path="reconstructv1maxi")

comp = client.get_component(name="hls_component")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

status = client.export_projects(components = ["hls_component"], system_projects = [], include_build_dir = False, dest = "F:\LMU\quantumMA\opimization\reconstructv1maxi\archive.zip")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

