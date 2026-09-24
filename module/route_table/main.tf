resource "azurerm_route_table" "route_table_block" {
  for_each            = var.route_table
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  route {
    name           = "route1"
    address_prefix = "10.1.0.0/16"
    next_hop_type  = "VnetLocal"
  }
}
