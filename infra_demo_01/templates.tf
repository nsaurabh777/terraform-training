resource "google_compute_instance_template" "frontend_template" {
  name        = "frontend-template"
  description = "Instance template for front-end servers"

  machine_type = "e2-micro"

  # Boot disk configuration
  disk {
    source_image = "debian-cloud/debian-10"
    auto_delete  = true
  }

  # Network interface configuration
  network_interface {
    network = "default" # Replace with your network name if needed
    access_config {}
  }
}


resource "google_compute_instance_template" "backend_template" {
  name        = "backend-template"
  description = "Instance template for back-end servers"

  machine_type = "e2-micro"

  # Boot disk configuration
  disk {
    source_image = "debian-cloud/debian-10"
    auto_delete  = true
  }

  # Network interface configuration
  network_interface {
    network = "default" # Replace with your network name if needed
    access_config {}
  }
}
