resource "google_compute_instance_group_manager" "frontend_instance_group" {
  name               = "frontend-instance-group"
  base_instance_name = "frontend"
  zone               = var.zone
  target_size        = 2
  version {
    instance_template = google_compute_instance_template.frontend_template.self_link
  }
  # depends_on = google_compute_instance_template.frontend_template
}

resource "google_compute_instance_group_manager" "backend_instance_group" {
  name               = "backend-instance-group"
  base_instance_name = "backend"
  zone               = var.zone
  target_size        = 2
  version {
    instance_template = google_compute_instance_template.backend_template.self_link
  }
  # depends_on = google_compute_instance_template.backend_template
}
