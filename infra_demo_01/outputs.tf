output "frontend_ip" {
  value = google_compute_instance_group_manager.frontend_instance_group.instance_group
}

output "backend_ip" {
  value = google_compute_instance_group_manager.backend_instance_group.instance_group
}

# output "database_ip" {
#   value = google_sql_database_instance.db_instance.ip_address
# }
