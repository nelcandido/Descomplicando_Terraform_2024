module "projeto_a" {
  source      = "git@github.com:nelcandido/terraform_modulo_instancias.git//modules/instancia?ref=v2.0.0"
  nome        = "projeto_alpha"
  environment = "Dev"
}