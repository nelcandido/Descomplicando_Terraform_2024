variable "nome" {
  type        = string
  description = "Nome da instância"
}

variable "environment" {
  type = string
  description = "Ambiente da instância"
  default = "dev"
}

variable "ami" {
  type = string
  description = "AMI da instancia"
}

variable "ami_bd" {
  type = string
  description = "AMI da instancia"
}