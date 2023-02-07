output "gke_name" {
  value = module.lp_assignment.google_container_cluster_name
}

output "airflow_url" {
  value = helm_release.airflow.name
}
