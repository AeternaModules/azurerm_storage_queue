output "storage_queues" {
  description = "All storage_queue resources"
  value       = azurerm_storage_queue.storage_queues
}
output "storage_queues_metadata" {
  description = "List of metadata values across all storage_queues"
  value       = [for k, v in azurerm_storage_queue.storage_queues : v.metadata]
}
output "storage_queues_name" {
  description = "List of name values across all storage_queues"
  value       = [for k, v in azurerm_storage_queue.storage_queues : v.name]
}
output "storage_queues_resource_manager_id" {
  description = "List of resource_manager_id values across all storage_queues"
  value       = [for k, v in azurerm_storage_queue.storage_queues : v.resource_manager_id]
}
output "storage_queues_storage_account_id" {
  description = "List of storage_account_id values across all storage_queues"
  value       = [for k, v in azurerm_storage_queue.storage_queues : v.storage_account_id]
}
output "storage_queues_storage_account_name" {
  description = "List of storage_account_name values across all storage_queues"
  value       = [for k, v in azurerm_storage_queue.storage_queues : v.storage_account_name]
}
output "storage_queues_url" {
  description = "List of url values across all storage_queues"
  value       = [for k, v in azurerm_storage_queue.storage_queues : v.url]
}

