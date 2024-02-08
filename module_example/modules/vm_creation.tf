variable "instance_name" {}
variable "instance_type" {}
variable "network_interface" {}

resource "google_compute_instance" "vm_instance" {
  name         = var.instance_name
  machine_type = var.instance_type
  zone         = "us-central1-a"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }
  network_interface {
    network = var.network_interface["network"]
    access_config {

    }
  }
}