variable "nome" {
  type        = string
  description = "Nome da instância"
}

variable "environment" {
  type        = string
  description = "Ambiente da instância"
  default     = "dev"
}

variable "instancias" {
  type = map(object({
    instance_type = string
    environment   = string
  }))
  description = "Mapa de instancias"
  default     = {}
}

variable "ami_data_filters" {
  description = "lista de filtros para data ami"
  type        = list(any)
}

variable "ebs_block_device" {
  description = "lista de volumes ebs para criado e montado na instancia"
  type        = list(any)
}