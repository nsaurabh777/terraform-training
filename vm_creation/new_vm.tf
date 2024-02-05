resource "google_compute_instance" "vm_instance" {
  name         = "my-terraform-vm"
  machine_type = "e2-medium"
  boot_disk {
    initialize_params {
      image = "centos-7-v20200403"
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
}