variable "osname" {}

resource "google_compute_instance" "tfvars_instance" {
  name         = "my-tfvars-instance"
  machine_type = "e2-micro"
  zone         = "us-central1-a"
  boot_disk {
    initialize_params {
      image = var.osname
    }
  }
  network_interface {
    network = "default"
    access_config {}
  }
}

# terraform plan -var-file=constants.tfvars
# terraform apply -var-file=constants.tfvars
# terraform destroy -var-file=constants.tfvars