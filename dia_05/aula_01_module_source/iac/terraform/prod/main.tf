module "projeto_a" {
  source      = "git@github.com:nelcandido/terraform_modulo_instancias.git"
  nome        = "ProjetoA"
  environment = "Production"
}