# Create Cloud Storage Bucket
resource "google_storage_bucket" "my_bucket" {
  name     = "terraform-training-bucket-01"
  location = "us-central1"
}

# Get bucket metadata
data "google_storage_bucket" "default" {
  name = google_storage_bucket.my_bucket.id
}

output "bucket_metadata" {
  value = data.google_storage_bucket.default
}