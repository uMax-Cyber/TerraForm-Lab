output "vm_id" {
  description = "Created VM ID"
  value       = proxmox_virtual_environment_vm.vm.vm_id
}
output "vm_name" {
  description = "Created VM name"
  value       = proxmox_virtual_environment_vm.vm.name
}
