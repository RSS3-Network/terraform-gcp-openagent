# Terraform OpenAgent GCP Module

This module helps you deploy OpenAgent on Google Cloud Platform to leverage Vertex AI.

The resources/services/activations/deletions that this module will create/trigger are:

- Create Cloud SQL PostgreSQL database
- Create pgvector extension
- Create Cloud Run service

## Usage

```terraform
module "openagent" {
  source = "RSS3-Network/openagent/gcp"

  nftscan_api_key = "<NFTSCAN_API_KEY>"
  serpapi_api_key = "<SERPAPI_API_KEY>"

  oauth = {
    OAUTH_GOOGLE_CLIENT_ID     = "<OAUTH_GOOGLE_CLIENT_ID>"
    OAUTH_GOOGLE_CLIENT_SECRET = "<OAUTH_GOOGLE_CLIENT_SECRET>"
  }
}
```

Then perform the following steps:

1. Run `terraform init` to get the necessary providers.
2. Run `terraform plan` to create the execution plan.
3. Run `terraform apply` to apply the execution plan.
4. Run `terraform destroy` to destroy the resources created by the execution plan.

More examples can be found in the [examples](./examples) directory.

## Inputs

| Name            | Description                                                                        | Type          | Default            | Required |
| --------------- | ---------------------------------------------------------------------------------- | ------------- | ------------------ | :------: |
| project         | The project name                                                                   | `string`      | n/a                |   yes    |
| region          | value of the region                                                                | `string`      | `"us-central1"`    |    no    |
| nftscan_api_key | API key for NFTScan                                                                | `string`      | n/a                |   yes    |
| serp_api_key    | API key for Serp API                                                               | `string`      | n/a                |   yes    |
| sql_tier        | CloudSQL Postgres tier                                                             | `string`      | `"db-f1-micro"`    |    no    |
| sql_version     | CloudSQL Postgres version                                                          | `string`      | `"POSTGRES_15"`    |    no    |
| image_repo      | The image repository                                                               | `string`      | `"rss3/openagent"` |    no    |
| image_tag       | The image tag                                                                      | `string`      | `"v20240715.1"`    |    no    |
| oauth           | The oauth env for chainlit, refer to https://docs.chainlit.io/authentication/oauth | `map(string)` | n/a                |   yes    |
