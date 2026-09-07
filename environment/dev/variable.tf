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