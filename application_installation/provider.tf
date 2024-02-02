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


resource "google_compute_firewall" "allow-ingress" {
  name    = "allow-ingress"
  network = google_compute_network.vpc_network.name

  allow {
		protocol = "icmp"
	}

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_network" "default" {
  name = "test-network"
}

/*
resource "null_resource" "generate_ssh_key" {
  provisioner "local-exec" {
    command = "./generate_ssh_key.sh"
  }
}
*/

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
	
	# Install Apache
	metadata_startup_script = "sudo yum -y install httpd; sudo yum install httpd; sudo systemctl start httpd; sudo systemctl enable httpd; sudo firewall-cmd --zone=public --permanent --add-service=http; sudo firewall-cmd --zone=public --permanent --add-service=https; sudo firewall-cmd --reload"

	/*
	metadata = {
		ssh-keys = "centos:${file("~/.ssh/id_rsa.pub")}"
	}

	connection {
		type        = "ssh"
		user        = "centos"
		private_key = file("~/.ssh/id_rsa")
		host        = google_compute_instance.default.network_interface.0.access_config.0.nat_ip
		password    = ""
	}

	provisioner "remote-exec" {
	    inline = [
			"sudo yum -y install httpd",
			"sudo systemctl enable httpd",
			"sudo systemctl start httpd"
	    ]
  	}
  	*/

	network_interface {
		subnetwork = google_compute_subnetwork.default.id
		access_config {
			# Section to give the VM an external IP Address
		}
	}
}
