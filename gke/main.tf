resource "google_container_cluster" "google_ke" {
  name     = "my-cluster"
  location = "asia-east1"
  node_locations = ["asia-east1-a", "asia-east1-b", "asia-east1-c"]
  initial_node_count = 1
  node_config {
    preemptible  = true
    machine_type = "e2-standard-2"
    disk_size_gb = 35
  }
}