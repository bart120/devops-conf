#provider
provider "kubernetes" {
    config_path = "C:\\Users\\vince\\.kube\\config"
    alias = "test-provider"
}

# Création d'un namespace
resource "kubernetes_namespace" "test" {
    metadata {
        name= var.namespace_name
    }
}