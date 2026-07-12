output "storage_queues_metadata" {
  description = "Map of metadata values across all storage_queues, keyed the same as var.storage_queues"
  value       = { for k, v in azurerm_storage_queue.storage_queues : k => v.metadata }
}
output "storage_queues_name" {
  description = "Map of name values across all storage_queues, keyed the same as var.storage_queues"
  value       = { for k, v in azurerm_storage_queue.storage_queues : k => v.name }
}
output "storage_queues_resource_manager_id" {
  description = "Map of resource_manager_id values across all storage_queues, keyed the same as var.storage_queues"
  value       = { for k, v in azurerm_storage_queue.storage_queues : k => v.resource_manager_id }
}
output "storage_queues_storage_account_id" {
  description = "Map of storage_account_id values across all storage_queues, keyed the same as var.storage_queues"
  value       = { for k, v in azurerm_storage_queue.storage_queues : k => v.storage_account_id }
}
output "storage_queues_storage_account_name" {
  description = "Map of storage_account_name values across all storage_queues, keyed the same as var.storage_queues"
  value       = { for k, v in azurerm_storage_queue.storage_queues : k => v.storage_account_name }
}
output "storage_queues_url" {
  description = "Map of url values across all storage_queues, keyed the same as var.storage_queues"
  value       = { for k, v in azurerm_storage_queue.storage_queues : k => v.url }
}

