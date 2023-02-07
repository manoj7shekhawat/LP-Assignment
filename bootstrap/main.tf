resource "google_storage_bucket" "google_storage_bucket" {
  for_each = toset(var.bucket_name)

  name          = each.value
  force_destroy = false
  location      = var.location
  storage_class = var.storage_class
  versioning {
    enabled = true
  }
}