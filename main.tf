resource "helm_release" "airflow" {
  name       = var.name

  repository = var.repository
  chart      = var.name
  namespace  = var.name
  create_namespace = true
  wait             = false

  set {
    name  = "service.type"
    value = var.service_type
  }
}
