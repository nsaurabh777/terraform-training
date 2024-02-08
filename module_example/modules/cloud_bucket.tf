variable "bucket_name" {
  description = "name of the cloud storage"
}

resource "google_storage_bucket" "my_bucket" {
  name     = var.bucket_name
  location = "us"
}