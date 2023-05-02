
#--------------------------------------------------------------------------------------------------------

#Variáveis Referente ao GCP

variable "project_id" {
  description = "Variável referente ao projeto que estou utilizando"
  type        = string
  default     = ""
}

variable "region" {
  description = "Variável referente a região base"
  type        = string
  default     = ""
}

variable "zone" {
  description = "Variável referente a zona base"
  type        = string
  default     = ""
}

variable "subnet_range" {
  description = "Variável referente ao range de IP da subnet"
  type        = string
  default     = ""
}

#--------------------------------------------------------------------------------------------------------
