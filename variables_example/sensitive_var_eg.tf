variable "db_password" {
  description = "sensitive password"
  type        = string
  sensitive   = true
}

resource "google_sql_database_instance" "db_instance" {
  provider         = google
  name             = "my-db-instance"
  database_version = "MYSQL_5_7"
  region           = "us-central1"
  settings {
    tier = "db-f1-micro"
    # Other configurations
  }
  # By default it is true. So won't be destroyed!
  deletion_protection = false
}

output "instance_connection_name" {
  value = google_sql_database_instance.db_instance.connection_name
}