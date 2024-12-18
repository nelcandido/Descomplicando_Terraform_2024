module "projeto_a" {
  source      = "./instancias"
  nome        = "ProjetoA"
  environment = "Develop"
  ami         = "ami-0b4624933067d393a"
  ami_bd      = "ami-036841078a4b68e14"
}