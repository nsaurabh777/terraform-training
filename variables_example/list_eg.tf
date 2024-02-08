variable "instance_types_list" {
  type        = list(any)
  description = "describe your variable"
  default     = ["instance-1", "instance-2", "instance-3"]
}

resource "google_compute_instance" "list_instance_eg" {
  count = length(var.instance_types_list)

  name         = "example-${var.instance_types_list[count.index]}"
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
  tags = ["web", "dev"]
}