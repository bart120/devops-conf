#provider
provider "kubernetes" {
    config_path = "C:\\Users\\vince\\.kube\\config"
}

# Création d'un namespace
resource "kubernetes_namespace" "test" {
    metadata {
        name= var.namespace_name
    }
}