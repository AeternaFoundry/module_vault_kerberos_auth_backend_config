resource "vault_kerberos_auth_backend_config" "kerberos_auth_backend_configs" {
  for_each = var.kerberos_auth_backend_configs

  keytab_wo            = each.value.keytab_wo
  keytab_wo_version    = each.value.keytab_wo_version
  mount                = each.value.mount
  service_account      = each.value.service_account
  add_group_aliases    = each.value.add_group_aliases
  namespace            = each.value.namespace
  remove_instance_name = each.value.remove_instance_name
}

