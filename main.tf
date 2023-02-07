resource "helm_release" "airflow" {
  name       = "airflow"

  repository = "https://airflow.apache.org"
  chart      = "airflow"
  namespace  = "airflow"
  create_namespace = true
  wait             = false

  set {
    name  = "service.type"
    value = "LoadBalancer"
  }
}
