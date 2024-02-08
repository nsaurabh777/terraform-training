variable "region" {
  type        = string
  description = "region details"
  default     = "us-central1"
}

variable "machine_type" {
  type        = string
  description = "machine type"
  default     = "e2-micro"
}

resource "google_compute_instance" "example" {
  name         = "my-var-instance"
  machine_type = var.machine_type
  zone         = "${var.region}-a"
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

output "instance_ip" {
  value = google_compute_instance.example.network_interface.0.network_ip
}