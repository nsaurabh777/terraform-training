variable "credentials_json_file_path" {}

provider "google" {
  project     = var.project_id
  region      = var.region
  zone        = var.zone
  credentials = file(var.credentials_json_file_path)
}