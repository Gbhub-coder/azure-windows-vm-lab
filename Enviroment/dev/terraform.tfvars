rgs={
rg1={
    rg_name="windows-rg"
    location="centralindia"
}

}

vnet = {
  vnet1 = {
    name          = "windows-vnet"
    rg_name       = "windows-rg"
    location      = "centralindia"
    address_space = ["10.0.0.0/16"]
  }

}

snet = {
  snet1 = {

    snet_name        = "frontend_subnet"
    vnet_name        = "windows-vnet"
    rg_name          = "windows-rg"
    address_prefixes = ["10.0.1.0/24"]

  }

  snet2 = {

    snet_name        = "backend_subnet"
    vnet_name        = "windows-vnet"
    rg_name          = "windows-rg"
    address_prefixes = ["10.0.2.0/24"]

  }

}

pip = {
  pip1 = {

    pip_name          = "frontend_pip"
    rg_name           = "windows-rg"
    location          = "centralindia"
    allocation_method = "static"


  }

  pip2 = {

    pip_name          = "backend_pip"
    rg_name           = "windows-rg"
    location          = "centralindia"
    allocation_method = "static"

  }

}

wvm={
  wvm1={
  
  name                = "frontend-machine"
  resource_group_name = "windows-rg"
  location            = "centralindia"
  size                = "Standard_D4_v5"
  admin_username      = "frontuser"
  admin_password      = "P@$$w0rd1234!"
  
  os_disk = {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference = {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
  }

    wvm2={
  
  name                = "backend-machine"
  resource_group_name = "windows-rg"
  location            = "centralindia"
  size                = "Standard_D4_v5"
  admin_username      = "backuser"
  admin_password      = "P@$$w0rd1234!"
  
  os_disk = {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference = {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
  }

}
  