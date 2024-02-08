variable "create_instance" {
  type = bool
  # default = true
}

resource "google_compute_instance" "bool_instance" {
  count        = var.create_instance ? 1 : 0
  name         = "my-bool-instance"
  machine_type = "e2-micro"
  zone         = "us-central1-a"
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