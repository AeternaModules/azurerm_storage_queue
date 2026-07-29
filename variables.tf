variable "storage_queues" {
  description = <<EOT
Map of storage_queues, attributes below
Required:
    - name
    - storage_account_id
Optional:
    - metadata
EOT

  type = map(object({
    name               = string
    storage_account_id = string
    metadata           = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.storage_queues : (
        length(v.name) <= 63
      )
    ])
    error_message = "[from validate.StorageQueueName: invalid when len(value) > 63]"
  }
  validation {
    condition = alltrue([
      for k, v in var.storage_queues : (
        length(v.name) >= 3
      )
    ])
    error_message = "[from validate.StorageQueueName: invalid when len(value) < 3]"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

