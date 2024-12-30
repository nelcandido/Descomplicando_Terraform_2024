variable "nome" {
  type        = string
  description = "Nome da instância"
}

variable "environment" {
  type        = string
  description = "Ambiente da instância"
  default     = "dev"
}

variable "criar_instancia" {
  type        = bool
  description = "Opção para criar instância ou não"
  default     = false
}