variable "observability_folder_settings" {
  description = <<EOT
Map of observability_folder_settings, attributes below
Required:
    - folder
    - location
Optional:
    - default_storage_location
    - kms_key_name
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    folder                   = string
    location                 = string
    default_storage_location = optional(string)
    kms_key_name             = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

