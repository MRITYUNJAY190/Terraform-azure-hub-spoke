resource_groups = {

  rg1 = {
    name     = "rg-hub-dev"
    location = "eastus"
  }

}


virtual_network = {

  vnet1 = {
    name                = "vnet-hub-dev"
    resource_group_name = "rg-hub-dev"
    location            = "eastus"
    address_space       = ["10.0.0.0/16"]
  }

}


subnet = {

  subnets1 = {
    sname                = "frontend-subnet"
    resource_group_name  = "rg-hub-dev"
    virtual_network_name = "vnet-hub-dev"
    address_prefixes     = ["10.0.1.0/24"]
  }

  subnets2 = {
    sname                = "backend-subnet"
    resource_group_name  = "rg-hub-dev"
    virtual_network_name = "vnet-hub-dev"
    address_prefixes     = ["10.0.2.0/24"]
  }

  subnets3 = {
    sname                = "database-subnet"
    resource_group_name  = "rg-hub-dev"
    virtual_network_name = "vnet-hub-dev"
    address_prefixes     = ["10.0.3.0/24"]
  }

}


nsg = {

  nsg1 = {
    name                = "nsg-hub-dev"
    location            = "eastus"
    resource_group_name = "rg-hub-dev"
  }

}

route_table = {

  routetable1 = {
    name                = "route-table-hub-dev"
    location            = "eastus"
    resource_group_name = "rg-hub-dev"
  }

}

virtual_machine = {

  vm01 = {
    nicname                       = "frontend-nic"
    location                      = "eastus"
    resource_group_name           = "rg-hub-dev"
    ipname                        = "frontend-ip"
    private_ip_address_allocation = "Dynamic"
    vmname                        = "frontend-vm"
    sname                         = "frontend-subnet"
    virtual_network_name          = "vnet-hub-dev"
    vm_size                       = "Standard_B2s"
  }

  vm02 = {
    nicname                       = "backend-nic"
    location                      = "eastus"
    resource_group_name           = "rg-hub-dev"
    ipname                        = "backend-ip"
    private_ip_address_allocation = "Dynamic"
    vmname                        = "backend-vm"
    sname                         = "backend-subnet"
    virtual_network_name          = "vnet-hub-dev"
    vm_size                       = "Standard_B2s"
  }

  vm03 = {
    nicname                       = "database-nic"
    location                      = "eastus"
    resource_group_name           = "rg-hub-dev"
    ipname                        = "database-ip"
    private_ip_address_allocation = "Dynamic"
    vmname                        = "database-vm"
    sname                         = "database-subnet"
    virtual_network_name          = "vnet-hub-dev"
    vm_size                       = "Standard_B2s"
  }

}

public_ip = {

  frontend = {
    name                = "frontend-ip"
    location            = "eastus"
    resource_group_name = "rg-hub-dev"
    allocation_method   = "Static"
    sku                 = "Standard"
  }

  backend = {
    name                = "backend-ip"
    location            = "eastus"
    resource_group_name = "rg-hub-dev"
    allocation_method   = "Static"
    sku                 = "Standard"
  }

  database = {
    name                = "database-ip"
    location            = "eastus"
    resource_group_name = "rg-hub-dev"
    allocation_method   = "Static"
    sku                 = "Standard"
  }
}

network_interface = {
  frontend = {
    nicname                       = "frontend-nic"
    location                      = "eastus"
    resource_group_name           = "rg-hub-dev"
    sname                         = "frontend-subnet"
    virtual_network_name          = "vnet-hub-dev"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_name        = "frontend-ip"
  }

  backend = {
    nicname                       = "backend-nic"
    location                      = "eastus"
    resource_group_name           = "rg-hub-dev"
    sname                         = "backend-subnet"
    virtual_network_name          = "vnet-hub-dev"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_name        = "backend-ip"
  }

  database = {
    nicname                       = "database-nic"
    location                      = "eastus"
    resource_group_name           = "rg-hub-dev"
    sname                         = "database-subnet"
    virtual_network_name          = "vnet-hub-dev"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_name        = "database-ip"
  }
}