variable "project" {
  description = "The project name"
  type        = string
}

variable "region" {
  description = "value of the region"
  type        = string
  default     = "us-central1"
}

variable "nftscan_api_key" {
  description = "API key for NFTScan"
  type        = string
}

variable "serp_api_key" {
  description = "API key for Serp API"
  type        = string
}

variable "google_gemini_api_key" {
  description = "API key for Google Gemini"
  type        = string
}

variable "sql_tier" {
  description = "CloudSQL Postgres tier"
  type        = string
  default     = "db-f1-micro"
}

variable "sql_version" {
  description = "CloudSQL Postgres version"
  type        = string
  default     = "POSTGRES_15"
}

variable "image_repo" {
  description = "The image repository"
  type        = string
  default     = "rss3/openagent"
}

variable "image_tag" {
  description = "The image tag"
  type        = string
  default     = "v20240715.1"
}

variable "oauth" {
  description = "The oauth env for chainlit, refer to https://docs.chainlit.io/authentication/oauth"
  type        = map(string)
}
