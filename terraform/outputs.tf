output "public_ip-address_edge-01" {
  value = "${yandex_compute_instance.edge-01.network_interface.0.nat_ip_address}"
}
