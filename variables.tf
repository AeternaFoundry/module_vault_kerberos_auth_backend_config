variable "kerberos_auth_backend_configs" {
  description = <<EOT
Map of kerberos_auth_backend_configs, attributes below
Required:
    - keytab_wo
    - keytab_wo_version
    - mount
    - service_account
Optional:
    - add_group_aliases
    - namespace
    - remove_instance_name
EOT

  type = map(object({
    keytab_wo            = string
    keytab_wo_version    = number
    mount                = string
    service_account      = string
    add_group_aliases    = optional(bool)
    namespace            = optional(string)
    remove_instance_name = optional(bool)
  }))
}

