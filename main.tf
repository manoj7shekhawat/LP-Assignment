module "lp_assignment" {
  source = "./modules/gke"
}


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
  depends_on = [module.lp_assignment]
}
