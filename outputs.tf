output "kerberos_auth_backend_configs_add_group_aliases" {
  description = "Map of add_group_aliases values across all kerberos_auth_backend_configs, keyed the same as var.kerberos_auth_backend_configs except keys with no add_group_aliases are omitted"
  value       = { for k, v in vault_kerberos_auth_backend_config.kerberos_auth_backend_configs : k => v.add_group_aliases if v.add_group_aliases != null }
}
output "kerberos_auth_backend_configs_keytab_wo_version" {
  description = "Map of keytab_wo_version values across all kerberos_auth_backend_configs, keyed the same as var.kerberos_auth_backend_configs except keys with no keytab_wo_version are omitted"
  value       = { for k, v in vault_kerberos_auth_backend_config.kerberos_auth_backend_configs : k => v.keytab_wo_version if v.keytab_wo_version != null }
}
output "kerberos_auth_backend_configs_mount" {
  description = "Map of mount values across all kerberos_auth_backend_configs, keyed the same as var.kerberos_auth_backend_configs except keys with no mount are omitted"
  value       = { for k, v in vault_kerberos_auth_backend_config.kerberos_auth_backend_configs : k => v.mount if v.mount != null && length(v.mount) > 0 }
}
output "kerberos_auth_backend_configs_namespace" {
  description = "Map of namespace values across all kerberos_auth_backend_configs, keyed the same as var.kerberos_auth_backend_configs except keys with no namespace are omitted"
  value       = { for k, v in vault_kerberos_auth_backend_config.kerberos_auth_backend_configs : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "kerberos_auth_backend_configs_remove_instance_name" {
  description = "Map of remove_instance_name values across all kerberos_auth_backend_configs, keyed the same as var.kerberos_auth_backend_configs except keys with no remove_instance_name are omitted"
  value       = { for k, v in vault_kerberos_auth_backend_config.kerberos_auth_backend_configs : k => v.remove_instance_name if v.remove_instance_name != null }
}
output "kerberos_auth_backend_configs_service_account" {
  description = "Map of service_account values across all kerberos_auth_backend_configs, keyed the same as var.kerberos_auth_backend_configs except keys with no service_account are omitted"
  value       = { for k, v in vault_kerberos_auth_backend_config.kerberos_auth_backend_configs : k => v.service_account if v.service_account != null && length(v.service_account) > 0 }
}

