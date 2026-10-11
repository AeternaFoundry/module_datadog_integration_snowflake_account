resource "datadog_integration_snowflake_account" "integration_snowflake_accounts" {
  for_each = var.integration_snowflake_accounts

  authentication = each.value.authentication
  name           = each.value.name
  settings       = each.value.settings
  dataflows      = each.value.dataflows
}

