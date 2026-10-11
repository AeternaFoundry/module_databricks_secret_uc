resource "databricks_secret_uc" "secret_ucs" {
  for_each = var.secret_ucs

  catalog_name    = each.value.catalog_name
  name            = each.value.name
  schema_name     = each.value.schema_name
  value           = each.value.value
  comment         = each.value.comment
  expire_time     = each.value.expire_time
  owner           = each.value.owner
  provider_config = each.value.provider_config
}

