<div align="center">

[![English](https://img.shields.io/badge/README-English-blue)](README.md)
[![Русский](https://img.shields.io/badge/README-Русский-red)](README.ru.md)
[![Oʻzbekcha](https://img.shields.io/badge/README-Oʻzbekcha-green)](README.uz.md)

</div>

[![CI](https://github.com/uMax-Cyber/TerraForm-Lab/actions/workflows/ci.yml/badge.svg)](https://github.com/uMax-Cyber/TerraForm-Lab/actions/workflows/ci.yml)

![Namoyish](screenshots/demo.svg)

# TerraForm Lab

Proxmox VE uchun Infrastructure as Code: virtual mashinalarni yaratish, tarmoq sozlash va koʻp nodli orkestratsiya uchun Terraform modullari. Cloud-init integratsiyasi va oltin shablon (golden-template) workflowlarini oʻz ichiga oladi.

## ℹ️ Legacy / oʻquv loyihasi

Bu Proxmox VE bilan Terraform boʻyicha erta eksperiment, tarixiy maqsadda saqlanadi — uy laboratoriyasi uchun birinchi IaC modullari shu qumloq (sandbox) muhitida ishlab chiqilgan va sinovdan oʻtkazilgan. Faol qoʻllab-quvvatlanmaydi. Dolzarb infratuzilma avtomatlashtirishi uchun **ProxmOps** loyihasiga qarang.

## Tez boshlash

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

## Modullar

### proxmox-vm
Cloud-init shablonidan virtual mashina yaratadi:
- Oltin shablondan toʻliq klonlash
- Cloud-init: foydalanuvchi, parol, statik IP, SSH kalitlar
- Diskni kengaytirish
- QEMU guest-agent yoqilgan

## Stack
- Terraform >= 1.5
- Proxmox VE 9.x (proxmox provayderi)
- Cloud-init

## Litsenziya
MIT

## 📬 Aloqa

Savollaringiz bormi? Yozing: **[allumaxmail@gmail.com](mailto:allumaxmail@gmail.com)**

---

<div align="center">

[![English](https://img.shields.io/badge/README-English-blue)](README.md)
[![Русский](https://img.shields.io/badge/README-Русский-red)](README.ru.md)
[![Oʻzbekcha](https://img.shields.io/badge/README-Oʻzbekcha-green)](README.uz.md)

</div>
