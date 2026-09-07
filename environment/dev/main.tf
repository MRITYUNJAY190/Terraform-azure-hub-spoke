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
