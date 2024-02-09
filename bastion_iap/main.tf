module "iap_bastion" {
  source  = "terraform-google-modules/bastion-host/google"
  version = "~>6.0"
  project = var.project_id
  zone    = var.zone
  network = google_compute_network.network.self_link
  subnet  = google_compute_subnetwork.subnetwork.self_link
  members = var.members
  disk_labels = {
    "test-label" = "test-value"
  }
}

resource "google_compute_network" "network" {
  project                 = var.project_id
  name                    = "test-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnetwork" {
  project                  = var.project_id
  name                     = "test-subnet"
  region                   = var.region
  ip_cidr_range            = "10.127.0.0/20"
  network                  = google_compute_network.network.self_link
  private_ip_google_access = true
}

resource "google_compute_firewall" "allow_access_from_bastion" {
  project = var.project_id
  name    = "allow-bastion-ssh"
  network = google_compute_network.network.self_link
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_service_accounts = [module.iap_bastion.service_account]
}

# resource "google_compute_firewall" "allow-iap-tunnel" {
#   name    = "allow-iap-tunnel"
#   network = "default"

#   allow {
#     protocol = "tcp"
#     ports    = ["65535"]
#   }

#   source_ranges = ["0.0.0.0/0"]  # Allow traffic from any source (modify as needed)
# }

# resource "google_iap_tunnel_instance_iam_binding" "enable_iap" {
#   instance = "bastion-vm"
#   members  = var.members
#   project  = var.project_id  # Set the correct GCP project ID
#   role     = "roles/iap.tunnelResourceAccessor"
#   zone     = var.zone
# }


# Add the roles to the IAM SVC account:
# - IAP-secured Tunnel User
# - Project IAM Admin
# - Role Administrator
# - Security Admin

# gcloud compute ssh --zone "us-central1-a" "bastion-vm" --tunnel-through-iap --project "cool-discipline-186213"

