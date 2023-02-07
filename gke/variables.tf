variable "name" {
  type = string
}

variable "location" {
  type = string
}

variable "node_locations" {
  type = list(string)
}

variable "initial_node_count" {
  type = number
}

variable "disk_size_gb" {
  type = number
}

variable "machine_type" {
  type = string
}

variable "preemptible" {
  type = bool
}