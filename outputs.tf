output "directory_object_lookup_id" {
  description = "Map of id values across all directory_object_lookup, keyed the same as var.directory_object_lookup"
  value       = { for k, v in data.azuread_directory_object.directory_object_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "directory_object_lookup_object_id" {
  description = "Map of object_id values across all directory_object_lookup, keyed the same as var.directory_object_lookup"
  value       = { for k, v in data.azuread_directory_object.directory_object_lookup : k => v.object_id if v.object_id != null && length(v.object_id) > 0 }
}
output "directory_object_lookup_type" {
  description = "Map of type values across all directory_object_lookup, keyed the same as var.directory_object_lookup"
  value       = { for k, v in data.azuread_directory_object.directory_object_lookup : k => v.type if v.type != null && length(v.type) > 0 }
}

