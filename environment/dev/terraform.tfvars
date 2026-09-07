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
    name                 = "app-subnet"
    resource_group_name  = "rg-hub-dev"
    virtual_network_name = "vnet-hub-dev"
    address_prefixes     = ["10.0.1.0/24"]
  }
}