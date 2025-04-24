output "public_ip_address" {
  value = azurerm_public_ip.example.ip_address
}

output "resource_group_name" {
  value = azurerm_resource_group.example.name
}

output "admin_username" {
  value = var.admin_username
}