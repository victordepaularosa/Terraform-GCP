# Terraform-GCP
Esse repositório tem o intuito de realizar a criação de recursos no GCP utilizando o Terraform, sendo os recursos criados: VPC, VM e Bucket

## Informações complementares

Cabe destacar que com o intuito de deixar os módulos de fórmula reciclável é utilizado variáveis no arquivo variables.tf, além disso foi 
feita a separação dos arquivos de modo a facilitar a organização e leitura do presente repositório.

Com o intuito de maior esclarimento quanto ao arquivo variables.tf, segue um exemplo de como deve ser adicionado o valor:

```
variable "project_id" {
  description = "Variável referente ao projeto que estou utilizando"
  type        = string
  default     = "Nome do Projeto"
}
```



