<div align="center">

[![English](https://img.shields.io/badge/README-English-blue)](README.md)
[![Русский](https://img.shields.io/badge/README-Русский-red)](README.ru.md)
[![Oʻzbekcha](https://img.shields.io/badge/README-Oʻzbekcha-green)](README.uz.md)

</div>

[![CI](https://github.com/uMax-Cyber/TerraForm-Lab/actions/workflows/ci.yml/badge.svg)](https://github.com/uMax-Cyber/TerraForm-Lab/actions/workflows/ci.yml)

![Namoyish](screenshots/demo.svg)

# TerraForm Lab

Proxmox VE uchun Infrastructure as Code: VM yaratish, tarmoq sozlash va koʻp nodli orkestratsiyani tayyor Terraform modullari bilan bajaradi. Cloud-init integratsiyasi va golden-template workflow-lari ham mavjud.

## ℹ️ Legacy / oʻquv loyihasi

Bu — Proxmox VE bilan Terraformni oʻrganish davomidagi erta eksperiment, tarixiy maqsadda saqlanadi. Uy laboratoriyasi uchun birinchi IaC modullari aynan shu sandbox-da ishlab chiqilgan va sinalgan. Loyiha endi faol qoʻllab-quvvatlanmaydi: dolzarb infratuzilma avtomatlashtirilishi **ProxmOps** loyihasida davom ettirilgan.

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
Cloud-init shablondan VM yaratadi:
- Golden template-dan toʻliq klonlash
- Cloud-init bilan foydalanuvchi, parol, statik IP va SSH kalitlarni sozlash
- Diskni kerakli hajmgacha kengaytirish
- QEMU guest-agent yoqilgan holda keladi

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
