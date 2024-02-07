# Create VM Instance
resource "google_compute_instance" "my_instance" {
  name         = "demo-vm-01"
  machine_type = "e2-small"
  zone         = "us-central1-a"
  boot_disk {
    initialize_params {
      # image = "windows-cloud/windows-2019"
      image = "centos-cloud/centos-7"
    }
  }

  network_interface {
    network    = google_compute_network.my_network.self_link
    subnetwork = google_compute_subnetwork.subnet_zone_a.self_link
  }
  depends_on = [google_compute_subnetwork.subnet_zone_a]

  /*
  # Allow RDP from any source
  metadata = {
    windows-startup-script-ps1 = <<-SCRIPT
      Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
    SCRIPT
  }
  */
}

/*
# Get VM metadata
data "google_compute_instance" "default" {
  name = google_compute_instance.my_instance.id
}

output "vm_metadata" {
  value = data.google_compute_instance.my_instance
}
*/

/*
output "vm_ip" {
  value = google_compute_instance.my_instance.network_interface.0.access_config.0.assigned_nat_ip
}
*/

/*
output "vm_details" {
  value     = google_compute_instance.my_instance
  sensitive = true
}
*/

output "instance_ip_addr" {
  value = google_compute_instance.my_instance.network_interface.0.network_ip
}
