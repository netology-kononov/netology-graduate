resource "yandex_compute_instance" "nginx-01" {
  name                      = "nginx-01"
  zone                      = "ru-central1-a"
  hostname                  = "nginx-01.netology"
  allow_stopping_for_update = true

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id    = data.yandex_compute_image.ubuntu-2004.id
      name        = "nginx-01"
      type        = "network-nvme"
      size        = "10"
    }
  }

  network_interface {
    subnet_id  = "${yandex_vpc_subnet.vpc-subnet-a.id}"
    nat        = true
    ip_address = "192.168.1.100"
  }

}