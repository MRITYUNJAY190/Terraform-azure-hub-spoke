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