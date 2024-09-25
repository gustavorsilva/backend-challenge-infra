terraform {
  required_providers {
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "~> 1.14.0" # Verifique a versão mais recente no Terraform Registry
    }
 }
}

provider "kubernetes" {
  config_path = "~/.kube/config"  # Caminho para o seu arquivo de configuração do Kubernetes
}