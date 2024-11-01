# phpmyadmin.tf
resource "docker_image" "phpmyadmin" {
  name = "phpmyadmin:latest"
}

resource "docker_container" "phpmyadmin" {
  image = docker_image.phpmyadmin.latest
  name  = "phpmyadmin"

  env = [
    "PMA_HOST=${docker_container.mysql.name}"       
  ]

  ports {
    internal = 80
    external = 8081
  }

  depends_on = [docker_container.mysql]
}