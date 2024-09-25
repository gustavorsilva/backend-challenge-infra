# Configuração do provedor AWS
provider "aws" {
  region = "us-east-1"  # Substitua pela sua região desejada, ex: "sa-east-1" para São Paulo
}

# Criação do repositório ECR
resource "aws_ecr_repository" "meu_repositorio_ecr" {
  name                 = "aplication-backend-challenge"
  image_tag_mutability = "MUTABLE"  # Opções: "MUTABLE" ou "IMMUTABLE"

  tags = {
    Projeto     = "backend-challenge"
	}
}

# Saída do URI do repositório
output "ecr_repository_uri" {
  description = "URI do repositório ECR criado"
  value       = aws_ecr_repository.meu_repositorio_ecr.repository_url
}
