# variables.tf
variable "mysql_database" {
  description = "Nom de la base de données MySQL"
  default     = "wordpress"
}

variable "mysql_user" {
  description = "Nom d'utilisateur pour la base de données"
  default     = "toto"
}

variable "mysql_password" {
  description = "Password d'utilisateur pour la base de données"
  default     = "bob"
}

variable "mysql_root_password" {
  description = "Password root pour la base de données"
  default     = "bob"
}