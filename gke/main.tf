resource "google_container_cluster" "google_ke" {
  name     = var.name
  location = var.location
  node_locations = var.node_locations
  initial_node_count = var.initial_node_count
  node_config {
    preemptible  = var.preemptible
    machine_type = var.machine_type
    disk_size_gb = var.disk_size_gb
  }
}