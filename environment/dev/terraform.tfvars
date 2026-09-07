resource_groups = {
  rg1 = {
  name= "rg-hub-dev"
  location= "centralindia"  
  }
}

virtual_network = {
  vnet1 = {
  name= "vnet-hub-dev" 
  resource_group_name ="rg-hub-dev"
  location = "centralindia"
  address_space = ["10.0.0.0/16"]
  }
}