module "resource_group" {
  source          = "../../module/resource_group"
  resource_groups = var.resource_groups
}


module "virtualnetwork" {
  depends_on      = [module.resource_group]
  source          = "../../module/virtualnetwork"
  virtual_network = var.virtual_network
}

module "subnet" {
  depends_on = [module.virtualnetwork]
  source     = "../../module/subnet"
  subnet     = var.subnet
}

module "network_securitygroup" {
  depends_on = [module.subnet]
  source     = "../../module/network_securitygroup"
  nsg        = var.nsg
}

# module "virtual_machine" {
#   depends_on      = [module.subnet]
#   source          = "../../module/virtual_machine"
#   virtual_machine = var.virtual_machine

# }