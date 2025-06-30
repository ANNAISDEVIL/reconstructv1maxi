# 2025-06-25T22:57:43.424302300
import vitis

client = vitis.create_client()
client.set_workspace(path="reconstructv1maxi")

comp = client.get_component(name="hls_component")
comp.run(operation="CO_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="CO_SIMULATION")

comp.run(operation="CO_SIMULATION")

comp.run(operation="CO_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

comp.run(operation="IMPLEMENTATION")

status = client.export_projects(components = ["hls_component"], system_projects = [], include_build_dir = False, dest = "F:\LMU\quantumMA\opimization\reconstructv1maxi\archive.zip")

status = client.export_projects(components = ["hls_component"], system_projects = [], include_build_dir = False, dest = "F:\LMU\quantumMA\opimization\reconstructv1maxi\archive.zip")

vitis.dispose()

