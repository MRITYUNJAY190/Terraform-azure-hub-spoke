module "resource_group" {
  source = "../../module/resource_group"
  resource_groups = var.resource_groups
   }
   
   module "virtualnetwork" {
    source = "../../module/virtualnetwork"
    virtual_network = var.virtual_network
}