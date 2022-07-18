resource "yandex_compute_instance" "nginx-01" {
  name                      = "nginx-01"
  zone                      = "ru-central1-a"
  hostname                  = "netology-stud"
  allow_stopping_for_update = true
  platform_id               = "standard-v2"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id    = data.yandex_compute_image.ubuntu-2004.id
      name        = "nginx-01"
      type        = "network-ssd"
      size        = "10"
    }
  }

  network_interface {
    subnet_id  = "${yandex_vpc_subnet.vpc-subnet-a.id}"
    nat        = true
    ip_address = "${var.nginx_private_ip}"
  }

  metadata = {
    ssh-keys = <<EOT
ubuntu:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCl9hio0NblcVhB+a5Cud2lpxmlTmTVyvntLNOtx0JQyeCuK107hrq3KJqhNbtYrheDg4CmQfQa7irfyAI19FJFAMrgmaR8JvzK3I86aPxcPxHxTNvpNl2ww1Xzi2h/uUIROU6fkLDVDV0X6D0AKhkb43oRu3aRcqb0LWaAyIS56EqvxDDPB0Ew25Gbx5RiTX5f+ImTAx8nSx/c893zcB/PrYugLYiCrFMH7qnqw0b8liBJkN5+KN/ISGF976QWo8eUS2C7bAQLvHY1GKDUWhqV/zkyIfqHHUUXZniYKkTDAPt+D5pUB8e7vPlx4H9oRJ16NOBBP7t0nv/qP85Wk1Fx0P6qrC1a/mvGpWA3WzNjrFHZvga0qFAENM/VXj0Yf7X2nOFtO4QVlY+l2h599oBan02XOSIVbkg8kO9nNzHnOqj//gFC7ydKenxnk9ikrNsJpqPH9UgIG397lLt+BttS83fH0/jsE1i855Hd9pA9r1AV3pV8RuXpgxLeycEU1/U= ubun@mscn
EOT
  }
}

# Depends on remote backend usage (Required local backend)
#
#resource "local_file" "vars_from_tf_nginx-01" {
#  content = <<-DOC
#    ---
#    nginx-01_pub_ip: "${yandex_compute_instance.nginx-01.network_interface.0.nat_ip_address}"
#
#    DOC
#  filename = "../ansible/group_vars/nginx/vars_from_tf.yml"
#  depends_on = [
#    yandex_compute_instance.nginx-01
#  ]
#}