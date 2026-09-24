variable "resource_groups" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "virtual_network" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    address_space       = list(string)
  }))
}

variable "subnet" {
  type = map(object({
    sname                = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
}

variable "nsg" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
  }))
}

variable "route_table" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
  }))
}

variable "virtual_machine" {
  type = map(object({
    nicname                       = string
    location                      = string
    resource_group_name           = string
    ipname                        = string
    private_ip_address_allocation = string
    vmname                        = string
    sname                         = string
    virtual_network_name          = string
    vm_size                       = string
  }))
}

variable "public_ip" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    allocation_method   = string
    sku                 = string
  }))
}

variable "network_interface" {
  type = map(object({
    nicname                       = string
    location                      = string
    resource_group_name           = string
    sname                         = string
    virtual_network_name          = string
    private_ip_address_allocation = string
    public_ip_address_name        = string
  }))
}