# export GOOGLE_APPLICATION_CREDENTIALS=/Users/saurabhnair/Documents/personal/projects/terraform/training/terraform-cool-discipline-186213-884c8d890250.jsonyes


terraform {
  backend "gcs" {
    bucket  = "terraform-training-bucket-01"
    prefix  = "terraform/state"
    # It does not delete automatically. So need to configure:
    force_destroy = true
  }
}
