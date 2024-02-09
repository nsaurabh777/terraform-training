resource "google_storage_bucket" "website_bucket" {
  name     = "my-website-bkt"
  location = "us-central1"
  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}

resource "google_storage_bucket_object" "index_page" {
  name         = "index.html"
  bucket       = google_storage_bucket.website_bucket.name
  source       = "index.html" # replace wirh rhw local path
  content_type = "text/html"
}

resource "google_storage_bucket_object" "error_page" {
  name         = "404.html"
  bucket       = google_storage_bucket.website_bucket.name
  source       = "404.html" # replace wirh rhw local path
  content_type = "text/html"
}

resource "google_storage_bucket_iam_binding" "index_page_binding" {
  bucket  = google_storage_bucket.website_bucket.name
  role    = "roles/storage.objectViewer"
  members = ["allUsers"]
}

output "website_url" {
  value = "https://${google_storage_bucket.website_bucket.name}.storage.googleapis.com"
}

# https://my-website-bkt.storage.googleapis.com/index.html
# https://my-website-bkt.storage.googleapis.com/404.html