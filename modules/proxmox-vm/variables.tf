variable "node_name"    { type = string }
variable "template_id"  { type = number }
variable "vm_name"      { type = string }
variable "vmid"         { type = number }
variable "cores"        { type = number, default = 2 }
variable "memory_mb"    { type = number, default = 2048 }
variable "disk_size_gb" { type = number, default = 20 }
variable "datastore"    { type = string, default = "local-lvm" }
variable "ip_address"   { type = string }
variable "prefix"       { type = string, default = "24" }
variable "gateway"      { type = string }
variable "username"     { type = string, default = "ubuntu" }
variable "password"     { type = string, sensitive = true }
