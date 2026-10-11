variable "oce_oce_instances_lookup" {
  description = <<EOT
Map of oce_oce_instances_lookup, attributes below
Required:
    - compartment_id
Optional:
    - display_name
    - state
    - tenancy_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    display_name   = optional(string)
    state          = optional(string)
    tenancy_id     = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

