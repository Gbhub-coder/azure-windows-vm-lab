data "azurerm_subnet" "snetid" {
  for_each             = var.wvm
  name                 = each.value.snet_name
  virtual_network_name = each.value.vnet_name
  resource_group_name  = each.value.rg_name
}

data "azurerm_public_ip" "datapip" {
  for_each            = var.wvm
  name                = each.value.pip_name
  resource_group_name = each.value.rg_name
}
