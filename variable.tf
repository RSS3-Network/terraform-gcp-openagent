variable "project" {
  description = "The project name"
  type        = string
}

variable "region" {
  description = "value of the region"
  type        = string
  default     = "us-central1"
}

variable "gemini_api_key" {
  description = "API key for Gemini"
  type        = string
  default     = ""
}

variable "openai_api_key" {
  description = "API key for OpenAI"
  type        = string
  default     = ""
}


variable "nftscan_api_key" {
  description = "API key for NFTScan"
  type        = string
  default     = ""
}

variable "tavily_api_key" {
  description = "API key for Tavily"
  type        = string
  default     = ""
}

variable "covalent_api_key" {
  description = "API key for Covalent"
  type    = string
  default = ""
}

variable "rootdata_api_key" {
  description = "API key for RootData"
  type    = string
  default = ""
}

variable "coingecko_api_key" {
  description = "API key for CoinGecko"
  type    = string
  default = ""
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
  default     = "v1.0.3"
}

variable "oauth" {
  description = "The oauth env for chainlit, refer to https://docs.chainlit.io/authentication/oauth"
  type        = map(string)
}
