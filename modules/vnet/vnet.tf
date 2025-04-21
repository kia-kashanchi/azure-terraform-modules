resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = var.address_space
  dns_servers         = var.dns_servers
  tags                = var.tags
}

resource "azurerm_subnet" "subnet" {
  for_each = { for s in var.subnets : s.name => s }

  name                 = each.value.name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = [each.value.address_prefix]
}

resource "azurerm_subnet_network_security_group_association" "nsg" {
  for_each = { for s in var.subnets : s.name => s if s.nsg_id != null }

  subnet_id                 = azurerm_subnet.nsg[each.key].id
  network_security_group_id = each.value.nsg_id
}

resource "azurerm_subnet_route_table_association" "routetable" {
  for_each = { for s in var.subnets : s.name => s if s.route_table_id != null }

  subnet_id      = azurerm_subnet.routetable[each.key].id
  route_table_id = each.value.route_table_id
}