data "azurerm_subnet" "subnet" {
  for_each             = var.network_interface
  name                 = each.value.sname
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}
data "azurerm_public_ip" "public_ip" {

  for_each = var.network_interface

  name                = each.value.public_ip_address_name
  resource_group_name = each.value.resource_group_name
}