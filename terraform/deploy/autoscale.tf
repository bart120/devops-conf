resource "kubernetes_horizontal_pod_autoscaler_v2" "nginx_autoscaler" {
  metadata {
    name      = "nginx-deployment"
    namespace = var.namespace_name
  }

  spec {
    scale_target_ref {
      api_version = "apps/v1"
      kind        = "Deployment"
      name        = "nginx-deployment"
    }
    min_replicas = 1
    max_replicas = 10

    metric {
      type = "Resource"

      resource {
        name   = "cpu"
        target {
          type               = "Utilization"
          average_utilization = 50
        }
      }
    }
  }
}
