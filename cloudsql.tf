resource "google_sql_database_instance" "openagent" {
  name             = "openagent"
  project          = var.project
  region           = var.region
  database_version = var.sql_version
  settings {
    tier = var.sql_tier
  }
}

resource "random_password" "openagent" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "google_sql_user" "openagent" {
  name     = "openagent"
  instance = google_sql_database_instance.openagent.name
  password = random_password.openagent.result
}

resource "google_sql_database" "openagent" {
  name     = "openagent"
  instance = google_sql_database_instance.openagent.name
}

resource "postgresql_extension" "vector" {
  name     = "vector"
  database = google_sql_database.openagent.name
}
