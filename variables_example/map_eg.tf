variable "instance_types_map" {
  type        = map(any)
  description = "instance_types"
  default = {
    "web" : "e2-micro",
    "app" : "e2-small",
    "db" : "e2-micro"
  }
}

resource "google_compute_instance" "map_instances" {
  for_each     = var.instance_types_map
  name         = "my-map-instance-${each.key}"
  machine_type = each.value
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }
  network_interface {
    network = "default"
    access_config {}
  }
  tags = ["${each.key}", "dev"]
}