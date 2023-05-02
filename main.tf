#--------------------------------------------------------------------------------------------------------

# Modulo Referente a Network GCP
module "gcp_network" {
  source = "./GCP_base_network"

  # Variáveis do Modulo
  project_id   = var.project_id
  region       = var.region
  zone         = var.zone
  vpc-name     = "vpc-01"
  subnet-name  = "subnet-01"
  subnet_range = var.subnet_range
}

#--------------------------------------------------------------------------------------------------------

# Modulo Referente ao Bucket da GCP
module "gcp_bucket" {
  source = "./GCP_bucket"

  # Variáveis do Modulo
  bucket-name = "bucket-0001"
  location    = var.region
}

#--------------------------------------------------------------------------------------------------------

# Modulo Referente a VM da GCP
module "gcp_vm" {
  source = "./GCP_VM"

  # Variáveis do Modulo
  vm-name     = "vm-teste"
  zone        = var.zone
  vpc-name    = module.gcp_network.vpc_name_out
  subnet-name = module.gcp_network.subnet_name_out

  depends_on = [module.gcp_network]
}

#---------------------------------------------------------------------------------------------------------
