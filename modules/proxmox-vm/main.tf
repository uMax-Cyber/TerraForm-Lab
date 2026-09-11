resource "proxmox_virtual_environment_vm" "vm" {
  node_name = var.node_name
  vm_id     = var.vmid
  name      = var.vm_name

  clone {
    vm_id = var.template_id
    full  = true
  }

  cpu {
    cores = var.cores
  }

  memory {
    dedicated = var.memory_mb
  }

  disk {
    datastore_id = var.datastore
    interface    = "scsi0"
    size         = var.disk_size_gb
  }

  initialization {
    datastore_id = var.datastore
    user_account {
      username = var.username
      password = var.password
    }
    ip_config {
      ipv4 {
        address = "${var.ip_address}/${var.prefix}"
        gateway = var.gateway
      }
    }
  }

  agent {
    enabled = true
  }
}
