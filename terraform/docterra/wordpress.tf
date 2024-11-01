# wordpress.tf
#resource "docker_image" "wordpress" {
#  name = "wordpress:latest"
#}

resource "docker_container" "wordpress" {
  image = "wordpress:latest"
  name  = "wordpress"

  env = [
    "WORDPRESS_DB_HOST=${docker_container.mysql.name}:3306",
    "WORDPRESS_DB_NAME=${var.mysql_database}",
    "WORDPRESS_DB_USER=${var.mysql_user}",
    "WORDPRESS_DB_PASSWORD=${var.mysql_password}"
  ]

  ports {
    internal = 80
    external = 8080
  }

  depends_on = [docker_container.mysql]
}