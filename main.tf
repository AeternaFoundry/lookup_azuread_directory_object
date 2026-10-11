data "azuread_directory_object" "directory_object_lookup" {
  for_each = var.directory_object_lookup

  object_id = each.value.object_id
}

