terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "~> 0.60"
    }
  }
}

provider "proxmox" {
  endpoint = var.pve_endpoint
  api_token = var.pve_api_token
  insecure = true
}

variable "pve_endpoint" {
  description = "Proxmox API endpoint"
  type        = string
  default     = "https://10.0.0.1:8006"
}

variable "pve_api_token" {
  description = "Proxmox API token"
  type        = string
  sensitive   = true
}
