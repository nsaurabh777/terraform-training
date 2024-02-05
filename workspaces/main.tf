resource "google_compute_instance" "default" {
  name         = "terraform-dev-vm-02"
  machine_type = "e2-small"
  zone         = "us-west1-a"

  boot_disk {
    initialize_params {
      image = "debian-12-bookworm-v20240110"
    }
  }
  network_interface {
    network = "default"
    access_config {

    }
  }
}

# Workspace acts like branches of git. Change certain properties to create resources with the same code.
# terraform workspace show
# terraform workspace new new_space_01
# Change either your provider.tf / main.tf
# terraform plan
# terraform apply
# terraform workspace select default
# terraform plan
# terraform apply