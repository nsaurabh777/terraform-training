provider "google" {
        project = "cool-discipline-186213"
        region = "us-weest1"
        zone = "us-west1-b"
        credentials = file("/Users/saurabhnair/Documents/personal/projects/terraform/training/terraform-cool-discipline-186213-884c8d890250.json")
}

resource "google_compute_autoscaler" "default" {
	name = "my-terraform-autoscaler"
	zone = "us-central1-b"
	target = google_compute_instance_group_manager.default.id
	autoscaling_policy {
		max_replicas = 3
		min_replicas = 1
		cooldown_period = 90
		cpu_utilization {
			target = 0.60
		}
	}
}

resource "google_compute_instance_template" "default" {
	machine_type = "e2-micro"
	disk {
		source_image = "autoscaler-vm-image-2"
	}
	network_interface {
		network = "default"
	}
}

resource "google_compute_instance_group_manager" "default" {
	name = "autoscaler-vm-instance-group-2"
	zone = "us-central1-b"
	base_instance_name = "autoscaler-vm-2"
	version {
		instance_template  = google_compute_instance_template.default.self_link_unique
	}

}