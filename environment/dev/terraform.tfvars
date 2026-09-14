resource_groups = {
  rg1 = {
    name     = "rg-hub-dev"
    location = "centralindia"
  }
}

virtual_network = {
  vnet1 = {
    name                = "vnet-hub-dev"
    resource_group_name = "rg-hub-dev"
    location            = "centralindia"
    address_space       = ["10.0.0.0/16"]
  }
}

subnet = {
  subnets1 = {
    sname                = "app-subnet"
    resource_group_name  = "rg-hub-dev"
    virtual_network_name = "vnet-hub-dev"
    address_prefixes     = ["10.0.1.0/24"]
  }
}

nsg = {
  nsg1 = {
    name                = "nsg-hub-dev"
    location            = "centralindia"
    resource_group_name = "rg-hub-dev"
  }
}

# virtual_machine = {
#   frontend_vm = {
#     nicname                       = "network_interface1"
#     location                      = "centralindia"
#     resource_group_name           = "rg-hub-dev"
#     ipname                        = "frontend_ip"
#     private_ip_address_allocation = "Dynamic"
#     vmname                        = "frontendvm"
#     sname                         = "app-subnet"
#     virtual_network_name          = "vnet-hub-dev"
#     vm_size = "Standard_D2s_v3"
#   }
# }