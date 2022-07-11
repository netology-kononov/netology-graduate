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

  metadata = {
    ssh-keys = <<EOT
ubuntu:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCx55pgg5e8LcFmHbUDsmdi9Tq+KY6xZhKxUcZnkASGnu92BwafhY/LTQQp7I3Vit2IiSSKlIPcM6jP3MJkyy6QiQV+VqKazXjLHy9vKUwgEqwejHacmkhCSCGxPsIQFv6xQ2tScsM1DBZhtn5xrtRoEh31pkHUyCrHZHUU81AbNnoJc8dNn3+PtEYyngLqPu1UoGGVDz2gI7HRzhgJ9+T08iNYjerXEPyByrZNcJqf7sJNLDvL5DBmf9vNen2hlu2vYe0PQfE2GUfKSMGDSXAJFrudByotN5EwixrgOYNKBU6WwvuaQl3SqVDDfOcG6G+P0q5lh14lxrtcM4RWNs/f2DikHV6FWXxVSA5FJiq65AB8jsxFtrxSkgemuqkha4W0/GxHV+FKjvP2t8UfjjylZgJDMkzGcyOplRXLyKS2Uf+yZOiWsHmPaMH5BBqZR4XmA3FEq2geUQ46CAqFvAUmAs3phfRzTuVXYj75HOsDyRr4eGSAWOrt+LUKTmaG4F0= ubun@mscn
EOT
  }
}