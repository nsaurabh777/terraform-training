variable "region_local" {
  type = string
  description = "region name"
  default = "us-central1"
}

variable "machine_type_local" {
  type = string
  description = "machine type"
  default = "e2-micro"
}

locals {
  zone = "${var.region_local}-a"
}

resource "google_compute_instance" "example_local" {
  name = "my-local-vars-instance"
  machine_type = var.machine_type_local
  zone = local.zone
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }
  network_interface {
    network = "default"
    access_config {}
  }
}

output "instance_ip_local" {
  value = google_compute_instance.example_local.network_interface.0.network_ip
}