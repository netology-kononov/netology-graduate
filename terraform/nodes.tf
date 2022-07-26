resource "yandex_compute_instance" "default" {
  for_each = var.hosts

  name                      = each.value.name
  hostname                  = each.value.hostname
  zone                      = local.zone[terraform.workspace]
  platform_id               = local.platform_id[terraform.workspace]
  allow_stopping_for_update = local.allow_stopping[terraform.workspace]

  resources {
    cores  = each.value.cores
    memory = each.value.memory
  }

  boot_disk {
    initialize_params {
      image_id    = data.yandex_compute_image.ubuntu-2004.id
      name        = each.value.name
      type        = "network-ssd"
      size        = "10"
    }
  }

  network_interface {
    subnet_id  = "${yandex_vpc_subnet.vpc_subnet.id}"
    nat        = each.value.nat
    ip_address = each.value.ip_address
  }

  metadata = {
    ssh-keys = "ubuntu:${var.public_ssh_rsa}"
  }
}
