<div align="center">

**🇬🇧 [English](README.md) · 🇷🇺 [Русский](README.ru.md) · 🇺🇿 [Oʻzbekcha](README.uz.md)**

</div>

[![CI](https://github.com/uMax-Cyber/TerraForm-Lab/actions/workflows/ci.yml/badge.svg)](https://github.com/uMax-Cyber/TerraForm-Lab/actions/workflows/ci.yml)

![Demo](screenshots/demo.svg)

# TerraForm Lab

Infrastructure as Code for Proxmox VE: Terraform modules for VM provisioning, network configuration, and multi-node orchestration. Includes cloud-init integration and golden-template workflows.

## Quick Start

```hcl
module "webserver" {
  source = "./modules/proxmox-vm"

  node_name    = "pve1"
  template_id  = 9000
  vm_name      = "web-01"
  vmid         = 200
  cores        = 2
  memory_mb    = 2048
  disk_size_gb = 20
  ip_address   = "10.0.1.50"
  gateway      = "10.0.1.1"
}
```

## Modules

### proxmox-vm
Provisions a VM from cloud-init template:
- Full clone from golden template
- Cloud-init: user, password, static IP, SSH keys
- Disk resize
- QEMU guest-agent enabled

## Stack
- Terraform >= 1.5
- Proxmox VE 9.x (proxmox provider)
- Cloud-init

## License
MIT

## 📬 Contact

Questions? Reach out: **[allumaxmail@gmail.com](mailto:allumaxmail@gmail.com)**

---

<div align="center">

**🇬🇧 [English](README.md) · 🇷🇺 [Русский](README.ru.md) · 🇺🇿 [Oʻzbekcha](README.uz.md)**

</div>
