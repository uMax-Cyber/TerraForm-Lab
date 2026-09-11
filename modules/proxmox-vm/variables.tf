variable "node_name" {
  description = "Target Proxmox node name"
  type        = string
}
variable "template_id" {
  description = "Golden template VMID to clone from"
  type        = number
}
variable "vm_name" {
  description = "Name for the new VM"
  type        = string
}
variable "vmid" {
  description = "VMID for the new VM"
  type        = number
}
variable "cores" {
  description = "CPU cores"
  type        = number
  default     = 2
}
variable "memory_mb" {
  description = "Memory in MB"
  type        = number
  default     = 2048
}
variable "disk_size_gb" {
  description = "Disk size in GB"
  type        = number
  default     = 20
}
variable "datastore" {
  description = "Storage datastore ID"
  type        = string
  default     = "local-lvm"
}
variable "ip_address" {
  description = "Static IP address"
  type        = string
}
variable "prefix" {
  description = "Network prefix length"
  type        = string
  default     = "24"
}
variable "gateway" {
  description = "Default gateway"
  type        = string
}
variable "username" {
  description = "Cloud-init username"
  type        = string
  default     = "ubuntu"
}
variable "password" {
  description = "Cloud-init password"
  type        = string
  sensitive   = true
}
