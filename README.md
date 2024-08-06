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

  project = "<GCP_PROJECT_ID>"

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

OpenAgent uses Gemini 1.5 Pro provided by the Vertex AI within the same Google Cloud project as the default model, it does not require additional API Keys. You can change the model and provider by modifying `model_name`, `gemini_api_key`, and `openai_api_key`.

## Inputs

| Name            | Description                                                                          | Type          | Default            | Required |
|-----------------|--------------------------------------------------------------------------------------|---------------|--------------------|:--------:|
| project         | GCP project ID                                                                       | `string`      | n/a                |   yes    |
| region          | value of the region                                                                  | `string`      | `"us-central1"`    |    no    |
| gemini_api_key  | API key for Gemini                                                                   | ""            | `string`           |    no    |
| openai_api_key  | API key for OpenAI                                                                   | ""            | `string`           |    o     |
| nftscan_api_key | API key for NFTScan                                                                  | `string`      | ""                 |    no    |
| serp_api_key    | API key for Serp API                                                                 | `string`      | ""                 |    no    |
| sql_tier        | CloudSQL Postgres tier                                                               | `string`      | `"db-f1-micro"`    |    no    |
| sql_version     | CloudSQL Postgres version                                                            | `string`      | `"POSTGRES_15"`    |    no    |
| image_repo      | The image repository                                                                 | `string`      | `"rss3/openagent"` |    no    |
| image_tag       | The image tag                                                                        | `string`      | `"v20240715.1"`    |    no    |
| oauth           | The oauth env for chainlit, refer to <https://docs.chainlit.io/authentication/oauth> | `map(string)` | n/a                |   yes    |
