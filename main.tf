terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_network" "alphatech_network" {
  name = "alphatech-network"
}

resource "docker_image" "nginx" {
  name = "nginx:alpine"
}

resource "docker_container" "web" {
  name  = "alphatech-web"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = 8080
  }

  networks_advanced {
    name = docker_network.alphatech_network.name
  }
}

resource "docker_image" "redis" {
  name = "redis:alpine"
}

resource "docker_container" "redis" {
  name  = "alphatech-redis"
  image = docker_image.redis.image_id

  networks_advanced {
    name = docker_network.alphatech_network.name
  }
}



