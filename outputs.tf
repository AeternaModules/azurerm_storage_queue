output "storage_queues_id" {
  description = "Map of id values across all storage_queues, keyed the same as var.storage_queues"
  value       = { for k, v in azurerm_storage_queue.storage_queues : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_queues_metadata" {
  description = "Map of metadata values across all storage_queues, keyed the same as var.storage_queues"
  value       = { for k, v in azurerm_storage_queue.storage_queues : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "storage_queues_name" {
  description = "Map of name values across all storage_queues, keyed the same as var.storage_queues"
  value       = { for k, v in azurerm_storage_queue.storage_queues : k => v.name if v.name != null && length(v.name) > 0 }
}
output "storage_queues_storage_account_id" {
  description = "Map of storage_account_id values across all storage_queues, keyed the same as var.storage_queues"
  value       = { for k, v in azurerm_storage_queue.storage_queues : k => v.storage_account_id if v.storage_account_id != null && length(v.storage_account_id) > 0 }
}
output "storage_queues_url" {
  description = "Map of url values across all storage_queues, keyed the same as var.storage_queues"
  value       = { for k, v in azurerm_storage_queue.storage_queues : k => v.url if v.url != null && length(v.url) > 0 }
}

