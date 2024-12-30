module "projeto_a" {
  source          = "./instancias"
  nome            = "ProjetoA"
  environment     = "production"
  criar_instancia = true
}