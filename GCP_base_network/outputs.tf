
# Nome da VPC 
output "vpc_name_out" {
  description = "Output referente ao nome da VPC utilizada"
  value       = google_compute_network.vpc.name
}

# Nome da Subnet
output "subnet_name_out" {
  description = "Output referente ao nome da subnet utilizada"
  value       = google_compute_subnetwork.Subnet.name
}

# Range da Subnet
output "subnet_gcp_range_out" {
  description = "Output referente ao range de IP da subnet do GCP"
  value       = google_compute_subnetwork.Subnet.ip_cidr_range
}

#--------------------------------------------------------------------------------------
