<div align="center">

[![English](https://img.shields.io/badge/README-English-blue)](README.md)
[![Русский](https://img.shields.io/badge/README-Русский-red)](README.ru.md)
[![Oʻzbekcha](https://img.shields.io/badge/README-Oʻzbekcha-green)](README.uz.md)

</div>

[![CI](https://github.com/uMax-Cyber/TerraForm-Lab/actions/workflows/ci.yml/badge.svg)](https://github.com/uMax-Cyber/TerraForm-Lab/actions/workflows/ci.yml)

![Демонстрация](screenshots/demo.svg)

# TerraForm Lab

Infrastructure as Code для Proxmox VE: Terraform-модули для провижининга виртуальных машин, настройки сети и оркестрации нескольких нод. Включает интеграцию с cloud-init и workflows на основе золотых шаблонов.

## ℹ️ Учебный/архивный проект

Это ранний эксперимент с Terraform на Proxmox VE, сохранённый для истории — песочница, в которой разрабатывались и обкатывались первые IaC-модули для домашней лаборатории. Активно не поддерживается. Актуальная автоматизация инфраструктуры — в проекте **ProxmOps**.

## Быстрый старт

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

## Модули

### proxmox-vm
Создаёт виртуальную машину из cloud-init-шаблона:
- Полное клонирование из золотого шаблона
- Cloud-init: пользователь, пароль, статический IP, SSH-ключи
- Расширение диска
- Включённый QEMU guest-agent

## Стек
- Terraform >= 1.5
- Proxmox VE 9.x (провайдер proxmox)
- Cloud-init

## Лицензия
MIT

## 📬 Контакты

Вопросы? Пишите: **[allumaxmail@gmail.com](mailto:allumaxmail@gmail.com)**

---

<div align="center">

[![English](https://img.shields.io/badge/README-English-blue)](README.md)
[![Русский](https://img.shields.io/badge/README-Русский-red)](README.ru.md)
[![Oʻzbekcha](https://img.shields.io/badge/README-Oʻzbekcha-green)](README.uz.md)

</div>
