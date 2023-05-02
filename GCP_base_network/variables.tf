
# Variáveis básicas

variable "project_id" {
  description = "Variável referente ao projeto que estou utilizando"
  type        = string
}

variable "region" {
  description = "Variável referente a região base"
  type        = string
}

variable "zone" {
  description = "Variável referente a zona base"
  type        = string
}

variable "vpc-name" {
  description = "Variável referente ao nome da VPC"
  type        = string
}

variable "subnet-name" {
  description = "Variável referente ao nome da subnet"
  type        = string
}

variable "subnet_range" {
  description = "Variável referente ao range de IP da subnet"
  type        = string
}

#--------------------------------------------------------------------------------------------------------