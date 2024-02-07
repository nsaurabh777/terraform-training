# Create Cloud Storage Bucket

# terraform init
# terraform refresh
# terraform plan
# terraform apply

resource "google_storage_bucket" "my_bucket" {
  name     = "terraform-training-bucket-01"
  location = "us-central1"

  # Used by GCS to know it is managed by terraform - Remote State Files
  versioning {
    enabled = true
  }
}

# Get bucket metadata
data "google_storage_bucket" "default" {
  name = google_storage_bucket.my_bucket.id
}

output "bucket_metadata" {
  value = data.google_storage_bucket.default
}
