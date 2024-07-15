terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.36.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6.2"
    }
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "1.22.0"
    }
  }
}

provider "google" {
  project = var.project
}

provider "postgresql" {
  scheme   = "gcppostgres"
  host     = google_sql_database_instance.openagent.connection_name
  port     = 5432
  database = "postgres"
  username = google_sql_user.openagent.name
  password = random_password.openagent.result
}
