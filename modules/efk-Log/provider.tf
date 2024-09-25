terraform {
  required_providers {
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "~> 1.14.0" # Verifique a versão mais recente no Terraform Registry
    }
 }
}