output "airflow_name" {
  value = helm_release.airflow.name
}

output "airflow-webserver_url" {
  value = "http://${data.kubernetes_service_v1.airflow-webserver.status[0].load_balancer[0].ingress[0].ip}:8080/login"
}