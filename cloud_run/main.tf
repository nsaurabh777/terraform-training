provider "google-beta" {
  location = "us-central1"
}

resource "google_project_service" "cloudrun_api" {
  service = "run.googleapis.com"
  disable_on_destroy = false
}

resource "google_cloud_run_v2_job" "default" {
  name = "cloud-run-job"
  location = "us-central1"
  launch_stage = "BETA"
  template {
    template {
      containers {
        image = "us-docker.pkg.dev/cloudrun/container/job:latest"
      }
    }
  }
}