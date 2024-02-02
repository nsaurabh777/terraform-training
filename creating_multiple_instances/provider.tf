provider "google" {
        project = "cool-discipline-186213"
        region = "us-weest1"
        zone = "us-west1-b"
        credentials = file("/Users/saurabhnair/Documents/personal/projects/terraform/training/terraform-cool-discipline-186213-884c8d890250.json")
}
resource "google_compute_instance" "vm_instances" {
	count = 3
	name = "instance-${count.index}"
	machine_type = "e2-micro"
	zone = "us-central1-a"
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