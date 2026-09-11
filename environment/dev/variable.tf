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

# variable "virtual_machine" {
#   type = map(object({
#     nicname                       = string
#     location                      = string
#     resource_group_name           = string
#     ipname                        = string
#     private_ip_address_allocation = string
#     vmname                        = string
#     sname                         = string
#     virtual_network_name          = string
#     vm_size                       = string
#   }))
# }