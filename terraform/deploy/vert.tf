resource "kubernetes_manifest" "nginx_vpa" {
  manifest = {
    apiVersion = "autoscaling.k8s.io/v1"
    kind       = "VerticalPodAutoscaler"
    metadata = {
      name      = "nginx-vpa"
      namespace = "kubernetes_namespace.dev.metadata[0].name"
    }
    spec = {
      targetRef = {
        apiVersion = "apps/v1"
        kind       = "Deployment"
        name       = "nginx-deployment"
      }
      updatePolicy = {
        updateMode = "Auto"  # Applique automatiquement les recommandations
      }
    }
  }
}