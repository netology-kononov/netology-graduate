output "public_ip-address_nginx-01" {
  value = "${yandex_compute_instance.nginx-01.network_interface.0.nat_ip_address}"
}