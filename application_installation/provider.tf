provider "google" {
        project = "cool-discipline-186213"
        region = "us-weest1"
        zone = "us-west1-b"
        credentials = file("/Users/saurabhnair/Documents/personal/projects/terraform/training/terraform-cool-discipline-186213-884c8d890250.json")
}
resource "google_compute_network" "vpc_network" {
	name = "my-network"
	auto_create_subnetworks = false
}
resource "google_compute_subnetwork" "default" {
	name = "my-custom-subnet"
	ip_cidr_range = "10.0.1.0/24"
	region = "us-central1"
	network = google_compute_network.vpc_network.id
}
# Create a single Compute Engine Instance
resource "google_compute_instance" "default" {
	# name = "flask-vm"
	name = "apache-vm"
	machine_type = "e2-small"
	zone = "us-central1-a"
	tags = ["ssh"]
	boot_disk {
		initialize_params {
			# image = "debian-cloud/debian-11"
			image = "centos-7-v20240110"
		}
	}
	# Install Flask
	# metadata_startup_script = "sudo apt-get update; sudo apt-get install -yq build-essential python3-pip rsync; pip install flask"
	metadata_startup_script = "yum -y update; yum install httpd; systemctl start httpd; systemctl enable httpd; firewall-cmd --zone=public --permanent --add-service=http; firewall-cmd --zone=public --permanent --add-service=https; firewall-cmd --reload"
	network_interface {
		subnetwork = google_compute_subnetwork.default.id
		access_config {
			# Section to give the VM an external IP Address
		}
	}
}
