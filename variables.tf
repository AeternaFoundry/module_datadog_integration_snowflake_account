variable "integration_snowflake_accounts" {
  description = <<EOT
Map of integration_snowflake_accounts, attributes below
Required:
    - authentication
    - name
    - settings
Optional:
    - dataflows
EOT

  type = map(object({
    authentication = object({
      snowflake_integration_account_private_key_auth = optional(object({
        auth_type                         = optional(string)
        private_key_name                  = string
        private_key_passphrase_wo         = optional(string)
        private_key_passphrase_wo_version = optional(string)
        private_key_wo                    = string
        private_key_wo_version            = string
      }))
    })
    name = string
    settings = object({
      snowflake_account_identifier = string
      username                     = string
    })
    dataflows = optional(object({
      snowflake_account_usage_metrics = optional(object({
        enabled = optional(bool)
        settings = optional(object({
          account_usage_metrics_aggregate_last_24h = optional(bool)
        }))
      }))
      snowflake_cloud_cost_metrics = optional(object({
        enabled = optional(bool)
        settings = optional(object({
          query_tags = optional(string)
        }))
      }))
      snowflake_data_observability_quality_monitoring = optional(object({
        enabled = optional(bool)
        settings = optional(object({
          do_table_crawler_cron          = optional(string)
          sync_snowflake_system_database = optional(bool)
        }))
      }))
      snowflake_event_table_logs = optional(object({
        enabled = optional(bool)
        settings = optional(object({
          event_table_events_enabled      = optional(bool)
          event_table_logs_enabled        = optional(bool)
          event_table_logs_interval_min   = optional(number)
          event_table_span_events_enabled = optional(bool)
          event_table_spans_enabled       = optional(bool)
        }))
      }))
      snowflake_organization_usage_metrics = optional(object({
        enabled = optional(bool)
        settings = optional(object({
          organization_usage_metrics_aggregate_last_24h = optional(bool)
        }))
      }))
      snowflake_query_history_logs = optional(object({
        enabled = optional(bool)
        settings = optional(object({
          join_query_history_with_access_history_enabled = optional(bool)
          query_history_logs_interval_min                = optional(number)
        }))
      }))
      snowflake_security_logs = optional(object({
        enabled = optional(bool)
        settings = optional(object({
          security_logs_interval_min = optional(number)
        }))
      }))
      snowflake_task_history_logs = optional(object({
        enabled = optional(bool)
        settings = optional(object({
          task_history_logs_interval_min = optional(number)
        }))
      }))
    }))
  }))
}

