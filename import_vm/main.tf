resource "google_compute_instance" "default" {
  name         = "terraform-dev-vm-01"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-12-bookworm-v20240110"
    }
  }
  network_interface {
    access_config {

    }
  }
}




# You can have just resource 	`"google_compute_instance" "default" {}` in your main.tf
# `terraform-dev-vm-01` is the name of the instance on GCP which is manually created. Get state file from GCP using the below command:
# terraform import google_compute_instance.default terraform-dev-vm-01
# Now you will have state file updated but terraform code won't be there.
# So manually add certain important keys and values to main.tf

