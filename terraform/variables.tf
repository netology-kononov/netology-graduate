variable "yandex_cloud_id" {
  default = "b1g33rnkdgjohcdl2ks7"
}

variable "yandex_folder_id" {
  default = "b1gjk81mhc94gj788sq9"
}

variable "public_ssh_rsa" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCl9hio0NblcVhB+a5Cud2lpxmlTmTVyvntLNOtx0JQyeCuK107hrq3KJqhNbtYrheDg4CmQfQa7irfyAI19FJFAMrgmaR8JvzK3I86aPxcPxHxTNvpNl2ww1Xzi2h/uUIROU6fkLDVDV0X6D0AKhkb43oRu3aRcqb0LWaAyIS56EqvxDDPB0Ew25Gbx5RiTX5f+ImTAx8nSx/c893zcB/PrYugLYiCrFMH7qnqw0b8liBJkN5+KN/ISGF976QWo8eUS2C7bAQLvHY1GKDUWhqV/zkyIfqHHUUXZniYKkTDAPt+D5pUB8e7vPlx4H9oRJ16NOBBP7t0nv/qP85Wk1Fx0P6qrC1a/mvGpWA3WzNjrFHZvga0qFAENM/VXj0Yf7X2nOFtO4QVlY+l2h599oBan02XOSIVbkg8kO9nNzHnOqj//gFC7ydKenxnk9ikrNsJpqPH9UgIG397lLt+BttS83fH0/jsE1i855Hd9pA9r1AV3pV8RuXpgxLeycEU1/U="
}

variable "hosts" {
    default = {
        "edge-01" = {
            "name"        = "edge-01",
            "hostname"    = "netology-stud",
            "ip_address"  = "192.168.1.100",
            "cores"       = 2,
            "memory"      = 2,
            "nat"         = true
        },
        "gitlab-01" = {
            "name"        = "gitlab-01",
            "hostname"    = "gitlab",
            "ip_address"  = "192.168.1.20",
            "cores"       = 4,
            "memory"      = 4,
            "nat"         = false
        },
        "gitlab-02" = {
            "name"        = "gitlab-02",
            "hostname"    = "runner",
            "ip_address"  = "192.168.1.21",
            "cores"       = 4,
            "memory"      = 4,
            "nat"         = false
        },
        "mysql-01" = {
            "name"        = "mysql-01",
            "hostname"    = "db01",
            "ip_address"  = "192.168.1.11",
            "cores"       = 4,
            "memory"      = 4,
            "nat"         = false
        },
        "mysql-02" = {
            "name"        = "mysql-02",
            "hostname"    = "db02",
            "ip_address"  = "192.168.1.12",
            "cores"       = 4,
            "memory"      = 4,
            "nat"         = false
        },
        "prom-01" = {
            "name"        = "prom-01",
            "hostname"    = "monitoring",
            "ip_address"  = "192.168.1.30",
            "cores"       = 4,
            "memory"      = 4,
            "nat"         = false
        },
        "wordpress-01" = {
            "name"        = "wordpress-01",
            "hostname"    = "app",
            "ip_address"  = "192.168.1.10",
            "cores"       = 4,
            "memory"      = 4,
            "nat"         = false
        }
    }
}

locals {
  zone = {
    netology-stage = "ru-central1-a"
    netology-prod  = "ru-central1-b"
  }
  platform_id = {
    netology-stage = "standard-v2"
    netology-prod  = "standard-v3"
  }
  allow_stopping = {
    netology-stage = true
    netology-prod  = false
  }
}
