locals {
  names = ["prodvm", "devvm", "testvm"]
}

resource "google_compute_instance" "vm_instance" {
  for_each     = toset(local.names)
  name         = each.value
  machine_type = "e2-micro"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
}
