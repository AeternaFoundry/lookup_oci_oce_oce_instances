data "oci_oce_oce_instances" "oce_oce_instances_lookup" {
  for_each = var.oce_oce_instances_lookup

  compartment_id = each.value.compartment_id
  display_name   = each.value.display_name
  state          = each.value.state
  tenancy_id     = each.value.tenancy_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

