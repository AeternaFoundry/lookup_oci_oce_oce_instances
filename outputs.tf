output "oce_oce_instances_lookup_id" {
  description = "Map of id values across all oce_oce_instances_lookup, keyed the same as var.oce_oce_instances_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_oce_oce_instances.oce_oce_instances_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "oce_oce_instances_lookup_compartment_id" {
  description = "Map of compartment_id values across all oce_oce_instances_lookup, keyed the same as var.oce_oce_instances_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_oce_oce_instances.oce_oce_instances_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "oce_oce_instances_lookup_display_name" {
  description = "Map of display_name values across all oce_oce_instances_lookup, keyed the same as var.oce_oce_instances_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_oce_oce_instances.oce_oce_instances_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "oce_oce_instances_lookup_filter" {
  description = "Map of filter values across all oce_oce_instances_lookup, keyed the same as var.oce_oce_instances_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_oce_oce_instances.oce_oce_instances_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "oce_oce_instances_lookup_oce_instances" {
  description = "Map of oce_instances values across all oce_oce_instances_lookup, keyed the same as var.oce_oce_instances_lookup except keys with no oce_instances are omitted"
  value       = { for k, v in data.oci_oce_oce_instances.oce_oce_instances_lookup : k => v.oce_instances if v.oce_instances != null && length(v.oce_instances) > 0 }
}
output "oce_oce_instances_lookup_state" {
  description = "Map of state values across all oce_oce_instances_lookup, keyed the same as var.oce_oce_instances_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_oce_oce_instances.oce_oce_instances_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}
output "oce_oce_instances_lookup_tenancy_id" {
  description = "Map of tenancy_id values across all oce_oce_instances_lookup, keyed the same as var.oce_oce_instances_lookup except keys with no tenancy_id are omitted"
  value       = { for k, v in data.oci_oce_oce_instances.oce_oce_instances_lookup : k => v.tenancy_id if v.tenancy_id != null && length(v.tenancy_id) > 0 }
}

