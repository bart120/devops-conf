# database.tf
#resource "docker_image" "mysql" {
#  name = "mysql:5.7"
#}


resource "docker_container" "mysql" {
  image = "mysql:latest"
  name  = "mysql"

  env = [
    "MYSQL_ROOT_PASSWORD=${var.mysql_root_password}",
    "MYSQL_DATABASE=${var.mysql_database}",
    "MYSQL_USER=${var.mysql_user}",
    "MYSQL_PASSWORD=${var.mysql_password}"
  ]

  mounts {
    source = "D:/formation/docker/ynov/volumes/data"
    target = "/var/lib/mysql"
    type   = "bind"
  }

  ports {
    internal = 3306
    external = 3306
  }
}