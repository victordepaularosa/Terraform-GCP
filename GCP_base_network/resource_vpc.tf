

# Criar VPC
resource "google_compute_network" "vpc" {
  project                 = var.project_id
  name                    = var.vpc-name
  auto_create_subnetworks = false
  routing_mode            = "REGIONAL"
  mtu                     = 1460
}

# Criar Subnet
resource "google_compute_subnetwork" "Subnet" {
  name          = var.subnet-name
  ip_cidr_range = var.subnet_range
  region        = var.region
  network       = google_compute_network.vpc.id
}

#--------------------------------------------------------------------------------------------------------------

# Regras de Firewall
resource "google_compute_firewall" "vpc-firewall" {
  project = var.project_id
  name    = "${var.vpc-name}-firewall"
  network = google_compute_network.vpc.name

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "8080", "1000-2000", "3389"]
  }

  allow {
    protocol = "icmp"
  }
}

#----------------------------------------------------------------------------------------------------------


