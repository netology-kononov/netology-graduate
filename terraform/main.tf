provider "yandex" {
  cloud_id  = "${var.yandex_cloud_id}"
  folder_id = "${var.yandex_folder_id}"
  zone      = local.zone[terraform.workspace]
}

resource "yandex_vpc_network" "vpc_net" {
  name = "netology_graduate_net"
}

resource "yandex_vpc_subnet" "vpc_subnet" {
  name           = "netology_graduate_subnet"
  zone           = local.zone[terraform.workspace]
  network_id     = "${yandex_vpc_network.vpc_net.id}"
  v4_cidr_blocks = ["192.168.1.0/24"]
}

data "yandex_compute_image" "ubuntu-2004" {
  family = "ubuntu-2004-lts"
}
