
# Base de Conexão
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.55.0"
    }
  }
}

# Configurações do Provedor do GCP
provider "google" {
  credentials = file("./chave_gcp.json") # Chave criada no GCP para poder se conectar ao Projeto
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}

#------------------------------------------------------------------------------------------------------------------
