/* Create instance in region Europe West1 Zone B */
resource "google_compute_instance" "europe_instance" {
  name         = "europe-instance-1"
  machine_type = "e2-small"
  zone         = "europe-west1-b"
  boot_disk {
    initialize_params {
      image = "ubuntu-2004-focal-v20231130"
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
}

/* Create instance in region US West1 Zone C */
resource "google_compute_instance" "us_instance" {
  name         = "us-instance-1"
  machine_type = "e2-small"
  zone         = "europe-west1-c"
  boot_disk {
    initialize_params {
      image = "ubuntu-minimal-2204-lts"
    }
  }
  network_interface {
    network = "default"
  }
}

# terraform taint google_compute_instance.us_instance
# terraform apply
# terraform untaint
# terraform untaint google_compute_instance.us_instance