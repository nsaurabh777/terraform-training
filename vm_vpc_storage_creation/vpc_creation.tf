# Create VPC and Subnets
resource "google_compute_network" "my_network" {
  name = "demo-vpc-01"
}

resource "google_compute_subnetwork" "subnet_zone_a" {
  name          = "demo-subnet-01"
  network       = google_compute_network.my_network.self_link
  ip_cidr_range = "10.3.1.0/24"
  region        = "us-central1"
}

resource "google_compute_subnetwork" "subnet_zone_b" {
  name          = "demo-subnet-02"
  network       = google_compute_network.my_network.self_link
  ip_cidr_range = "10.3.2.0/24"
  region        = "us-central1"
}

# Create SSH Rule
resource "google_compute_firewall" "allow_ssh" {
  name    = "allow-ssh"
  network = google_compute_network.my_network.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}

# Create Firewall Rules
resource "google_compute_firewall" "allow_ping" {
  name    = "allow-ping"
  network = google_compute_network.my_network.name

  allow {
    protocol = "icmp"
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "allow_http" {
  name    = "allow-http"
  network = google_compute_network.my_network.name

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "allow_rdp" {
  name    = "allow-rdp"
  network = google_compute_network.my_network.name

  allow {
    protocol = "tcp"
    ports    = ["3389"]
  }

  source_ranges = ["0.0.0.0/0"]
}

/*
# Get VPC metadata
data "google_compute_network" "default" {
  name = google_compute_network.my_network.id
}

output "vpc_metadata" {
  value = data.google_compute_network.my_network
}
*/

output "vpc_details" {
  value = google_compute_network.my_network
}

output "vpc_name" {
  value = google_compute_network.my_network.name
}

output "subnet_a_name" {
  value = google_compute_subnetwork.subnet_zone_a.name
}

output "subnet_b_name" {
  value = google_compute_subnetwork.subnet_zone_b.name
}