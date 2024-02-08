resource "google_compute_network" "vpc_network" {
  name = "my-vpc-${var.env}"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "frontend_subnet" {
  name = "frontend-subnet"
  region = var.region
  network = google_compute_network.vpc_network.self_link
  ip_cidr_range = "10.0.1.0/24"
}

resource "google_compute_subnetwork" "backend_subnet" {
  name = "backend-subnet"
  region = var.region
  network = google_compute_network.vpc_network.self_link
  ip_cidr_range = "10.0.2.0/24"
}