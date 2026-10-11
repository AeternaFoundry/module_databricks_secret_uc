variable "secret_ucs" {
  description = <<EOT
Map of secret_ucs, attributes below
Required:
    - catalog_name
    - name
    - schema_name
    - value
Optional:
    - comment
    - expire_time
    - owner
    - provider_config
EOT

  type = map(object({
    catalog_name = string
    name         = string
    schema_name  = string
    value        = string
    comment      = optional(string)
    expire_time  = optional(string)
    owner        = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

