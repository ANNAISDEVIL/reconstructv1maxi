# 2025-07-26T18:17:40.174899700
import vitis

client = vitis.create_client()
client.set_workspace(path="reconstructv1maxi")

comp = client.get_component(name="hls_component")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

status = client.export_projects(components = ["hls_component"], system_projects = [], include_build_dir = True, dest = "F:\LMU\quantumMA\opimization\reconstructv1maxi\archive.zip")

