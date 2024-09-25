## Backend Challenge Infraestrutura
Este repositório automatiza a criação e gerenciamento de um cluster de infraestrutura para o Backend Challenge, utilizando Terraform e GitHub Actions.

# Configurar Credenciais da AWS no GitHub
Para que a pipeline funcione corretamente, é necessário configurar os seguintes segredos no repositório do GitHub:

- AWS_ACCESS_KEY_ID:.
- AWS_SECRET_ACCESS_KEY:
- AWS_REGION:

# Variavel de Alteração
na raiz do pasta procure o arquivo *terraform.tfvars*, nele faça as alterações nas quais seja:
```bash
cluster_name    = "" # Informe o Nome do Cluster
region          = "" # Região 
vpc_id          = "" # VPC ID
subnet_ids      = ["", ""] # 2 Subnets obrigatorias para criação
cluster_role_arn = "" # Role do Cluster
node_role_arn    = "" # Role do Node
desired_capacity = 1 # Maquinas Desejadas
max_size         = 2 # Maximo de Maquinas
min_size         = 1 # Minimo de Maquinas
instance_types   = ["t3.medium"] # Tipo de instancia
capacity_type = "SPOT" # Instancia
```
#