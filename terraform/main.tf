provider "yandex" {
  cloud_id  = "${var.yandex_cloud_id}"
  folder_id = "${var.yandex_folder_id}"
  zone      = "ru-central1-a"
}

resource "yandex_vpc_network" "vpc-net" {
  name = "netology-graduate-net"
}

resource "yandex_vpc_subnet" "vpc-subnet-a" {
  name           = "zone-a-subnet"
  zone           = "ru-central1-a"
  network_id     = "${yandex_vpc_network.vpc-net.id}"
  v4_cidr_blocks = ["192.168.1.0/24"]
}

#resource "yandex_vpc_subnet" "vpc-subnet-b" {
#  name           = "zone-a-subnet"
#  zone           = "ru-central1-b"
#  network_id     = "${yandex_vpc_network.vpc-net.id}"
#  v4_cidr_blocks = ["192.168.2.0/24"]
#}

data "yandex_compute_image" "ubuntu-2004" {
  family = "ubuntu-2004-lts"
}