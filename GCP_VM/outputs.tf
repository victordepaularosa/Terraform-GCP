

output "ip_publico_out" {
    description = "Output referente ao IP Público da VM"
    value = google_compute_address.ip_publico-gcp.address
}

output "vm_name_out" {
    description = "Output referente ao nome da VM"
    value = google_compute_instance.vm-gcp.name
}
