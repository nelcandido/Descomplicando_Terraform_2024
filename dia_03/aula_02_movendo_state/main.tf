module "projeto_a" {
  source      = "./instancias"
  nome        = "movendo_state"
}

moved {
  from = module.projeto_a.aws_instance.web
  to   = module.projeto_a.aws_instance.this
}