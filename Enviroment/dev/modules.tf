module "resource_group"{
    source="../../Child Module/azurerm_resource_group"
    rgs=var.rgs
}

module "virtual_network"{
    depends_on = [ module.resource_group ]
    source="../../Child Module/azurerm_virtual_network"
    vnet=var.vnet
}

module "subnet"{
    depends_on = [ module.virtual_network ]
    source="../../Child Module/azurerm_subnet"
    snet=var.snet
}

module "public_ip"{
    depends_on = [ module.resource_group ]
    source="../../Child Module/azurerm_public_ip"
    pip=var.pip
}

module "windows_vm"{
    depends_on = [ module.resource_group,module.subnet ]
    source="../../Child Module/azurerm_windows_virtual_machine"
    wvm=var.wvm
}
