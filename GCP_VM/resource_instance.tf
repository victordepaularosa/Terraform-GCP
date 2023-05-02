
# Criar o IP Público para a VM
resource "google_compute_address" "ip_publico-gcp" {
  name = "ip-publico-${var.vm-name}"
}

# Criar VM
resource "google_compute_instance" "vm-gcp" {
  name         = var.vm-name
  machine_type = "f1-micro"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network    = var.vpc-name
    subnetwork = var.subnet-name

    access_config {
      nat_ip = google_compute_address.ip_publico-gcp.address
    }
  }
}
