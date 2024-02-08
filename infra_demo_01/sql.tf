resource "google_sql_database_instance" "db_instance" {
  name = "my-database-${var.env}"
  region = var.region
  database_version = "MYSQL_5_7"
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection = false
}