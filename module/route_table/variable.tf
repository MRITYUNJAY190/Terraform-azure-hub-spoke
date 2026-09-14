variable "route_table" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
  }))
}

