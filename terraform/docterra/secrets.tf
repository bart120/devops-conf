# secrets.tf
#resource "docker_secret" "mysql_root_password" {
#  name  = "mysql_root_password"
#  data  = base64encode("bob")
#}

#resource "docker_secret" "mysql_user_password" {
#  name  = "mysql_user_password"
#  data  = base64encode("bob")
#}