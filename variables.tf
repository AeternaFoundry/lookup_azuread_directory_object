variable "directory_object_lookup" {
  description = <<EOT
Map of directory_object_lookup, attributes below
Required:
    - object_id
Optional:
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    object_id = string
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.directory_object_lookup : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.object_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
}

