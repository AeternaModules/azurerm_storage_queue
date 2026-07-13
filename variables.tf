variable "storage_queues" {
  description = <<EOT
Map of storage_queues, attributes below
Required:
    - name
Optional:
    - metadata
    - storage_account_id
    - storage_account_name
EOT

  type = map(object({
    name                 = string
    metadata             = optional(map(string))
    storage_account_id   = optional(string)
    storage_account_name = optional(string)
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_storage_queue's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.StorageQueueName] !regexp.MustCompile(`^[a-z0-9-]+$`).MatchString(value)
  # path: name
  #   source:    [from validate.StorageQueueName] regexp.MustCompile(`^-`).MatchString(value)
  # path: name
  #   source:    [from validate.StorageQueueName] regexp.MustCompile(`-$`).MatchString(value)
  # path: name
  #   condition: length(value) <= 63
  #   message:   [from validate.StorageQueueName: invalid when len(value) > 63]
  #   source:    [from validate.StorageQueueName: invalid when len(value) > 63]
  # path: name
  #   condition: length(value) >= 3
  #   message:   [from validate.StorageQueueName: invalid when len(value) < 3]
  #   source:    [from validate.StorageQueueName: invalid when len(value) < 3]
  # path: storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] !ok
  # path: storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] err != nil
  # path: metadata
  #   source:    [from validate.MetaDataKeys] isCSharpKeyword
  # path: metadata
  #   source:    [from validate.MetaDataKeys] !regexp.MustCompile(`^([a-z_]{1}[a-z0-9_]{1,})$`).MatchString(k)
}

