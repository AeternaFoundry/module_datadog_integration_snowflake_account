output "integration_snowflake_accounts_id" {
  description = "Map of id values across all integration_snowflake_accounts, keyed the same as var.integration_snowflake_accounts except keys with no id are omitted"
  value       = { for k, v in datadog_integration_snowflake_account.integration_snowflake_accounts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "integration_snowflake_accounts_authentication" {
  description = "Map of authentication values across all integration_snowflake_accounts, keyed the same as var.integration_snowflake_accounts except keys with no authentication are omitted"
  value       = { for k, v in datadog_integration_snowflake_account.integration_snowflake_accounts : k => v.authentication if v.authentication != null && length(v.authentication) > 0 }
}
output "integration_snowflake_accounts_dataflows" {
  description = "Map of dataflows values across all integration_snowflake_accounts, keyed the same as var.integration_snowflake_accounts except keys with no dataflows are omitted"
  value       = { for k, v in datadog_integration_snowflake_account.integration_snowflake_accounts : k => v.dataflows if v.dataflows != null && length(v.dataflows) > 0 }
}
output "integration_snowflake_accounts_name" {
  description = "Map of name values across all integration_snowflake_accounts, keyed the same as var.integration_snowflake_accounts except keys with no name are omitted"
  value       = { for k, v in datadog_integration_snowflake_account.integration_snowflake_accounts : k => v.name if v.name != null && length(v.name) > 0 }
}
output "integration_snowflake_accounts_settings" {
  description = "Map of settings values across all integration_snowflake_accounts, keyed the same as var.integration_snowflake_accounts except keys with no settings are omitted"
  value       = { for k, v in datadog_integration_snowflake_account.integration_snowflake_accounts : k => v.settings if v.settings != null && length(v.settings) > 0 }
}

