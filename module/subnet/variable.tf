variable "subnet" {
  type = map(object({
    sname                 = string
    resource_group_name   = string
    virtual_network_name  = string
    address_prefixes      = list(string)
  }))
}