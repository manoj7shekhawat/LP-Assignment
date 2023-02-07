resource "helm_release" "airflow" {
  name = var.name

  repository       = var.repository
  chart            = var.name
  namespace        = var.name
  create_namespace = true
  wait             = false

  set {
    name  = "service.type"
    value = var.service_type
  }
}


data "kubernetes_service_v1" "airflow-webserver" {
  metadata {
    name      = "airflow-webserver"
    namespace = var.name
  }
}