# Terraform-GCP
Esse repositório tem o intuito de realizar a criação de recursos no GCP utilizando o Terraform, sendo os recursos criados: VPC, VM e Bucket

> <b>Status do Projeto:</b> Finalizado com possibilidade de atualização

### Layout do Projeto 

O presente projeto foi criado utilizando Terraform para criação de recursos no Google Cloud Platform (GCP), sendo divido em módulos para cada recurso utilizado afim de segrega-los e chamados os mesmos no main.tf separadamente. 

Cabe mencionar que foi realizada a segregação das informações entre conexões e provider, estando os mesmos no arquivo provider.GCP.tf.

## Informações complementares

Cabe destacar que com o intuito de deixar os módulos de fórmula reciclável é utilizado variáveis no arquivo variables.tf, além disso foi 
feita a separação dos arquivos de modo a facilitar a organização e leitura do presente repositório.

Com o intuito de maior esclarimento quanto ao arquivo variables.tf, segue um exemplo de como deve ser adicionado o valor, não sendo necessária  alteração no arquivo variables.tf dentro dos módulos:

```
variable "project_id" {
  description = "Variável referente ao projeto que estou utilizando"
  type        = string
  default     = "Nome do Projeto"
}
```



