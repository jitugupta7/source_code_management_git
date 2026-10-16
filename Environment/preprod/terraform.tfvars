rgs = {
  rg1 = {
    name     = "test-rg1"
    location = "East US"
  }
  rg2 = {
    name     = "test-rg2"
    location = "West US"
  }
  rg3 = {
    name     = "test-rg3"
    location = "Central US"
  }
}

storageaccount = {
  storageacct1 = {
  name                     = "testrgstorage4oct"
  resource_group_name      = "test-rg1"
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
}

subnet = {
  subnet1 = {
    name                 = "test-subnet1"
    resource_group_name  = "test-rg1"
    virtual_network_name = "test-vnet1"
    address_prefixes     = ["10.0.1.0/24"]
  }

  subnet2 = {
    name                 = "test-subnet2"
    resource_group_name  = "test-rg1"
    virtual_network_name = "test-vnet1"
    address_prefixes     = ["10.0.2.0/24"]

  }
}

vnet = {
  vnet1 = {
    name                = "test-vnet1"
    location            = "East US"
    resource_group_name = "test-rg1"
    address_space       = ["10.0.0.0/16"]
    dns_servers         = ["8.8.8.8"]
  }

  vnet2 = {
    name                = "test-vnet2"
    location            = "West US"
    resource_group_name = "test-rg2"
    address_space       = ["10.1.0.0/16"]
    dns_servers         = ["8.8.4.4"]
  }
}