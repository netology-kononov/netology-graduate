provider "yandex" {
  cloud_id  = "b1g33rnkdgjohcdl2ks7"
  folder_id = "b1gjk81mhc94gj788sq9"
  zone      = "ru-central1-a"
}

resource "yandex_vpc_network" "vpc_net" {
  name = "netology-graduate-net"
}

resource "yandex_vpc_subnet" "vpc_subnet-a" {
  name           = "zone-a-subnet"
  zone           = "ru-central1-a"
  network_id     = "${yandex_vpc_network.vpc_net.id}"
  v4_cidr_blocks = ["192.168.1.0/24"]
}

resource "yandex_vpc_subnet" "vpc_subnet-b" {
  name           = "zone-b-subnet"
  zone           = "ru-central1-b"
  network_id     = "${yandex_vpc_network.vpc_net.id}"
  v4_cidr_blocks = ["192.168.2.0/24"]
}