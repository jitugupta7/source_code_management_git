module "resource_group" {
  source = "../../Module/resource_group"
  rgs    = var.rgs

}

module "Storage_account" {
  source         = "../../Module/Storage_account"
  depends_on     = [module.resource_group]
  storageaccount = var.storageaccount
}

module "Subnet" {
  source = "../../Module/Subnet"
  depends_on = [module.Virtual_network]
  subnet = var.subnet
}

module "Virtual_network" {
  source = "../../Module/Virtual_network"
  depends_on = [module.resource_group]
  vnet   = var.vnet
}