variable "cluster_name" {
  description = "Nome do cluster EKS"
  default     = "my-eks-cluster"
}

variable "region" {
  description = "Região AWS"
  default     = "us-east-1"
}

variable "capacity_type" {
  description = "Região AWS"
  default     = "SPOT"
}

variable "desired_capacity" {
  description = "Número desejado de nós no node group"
  default     = 1
}

variable "vpc_id" {
  description = "Tamanho máximo do node group"
  default     = ""
}

variable "role_arn" {
  description = "Tamanho máximo do node group"
  default     = ""
}

variable "subnet_ids" {
  description = "Tamanho máximo do node group"
  default     = ""
}

variable "cluster_role_arn" {
  description = "Tamanho máximo do node group"
  default     = ""
}

variable "node_role_arn" {
  description = "Tamanho máximo do node group"
  default     = ""
}

variable "instance_types" {
  description = "Tamanho máximo do node group"
  default     = ""
}

variable "max_size" {
  description = "Tamanho máximo do node group"
  default     = 3
}

variable "min_size" {
  description = "Tamanho mínimo do node group"
  default     = 1
}