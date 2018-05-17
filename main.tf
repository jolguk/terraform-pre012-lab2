resource "azurerm_resource_group" "citadel" {
    name                      = "${var.rg}"
    location                  = "${var.loc}"
    tags                      = "${var.tags}" 
}

resource "azurerm_storage_account" "sa" {
    name                      = "${var.tags["source"]}richeneysa1976"
    resource_group_name       = "${azurerm_resource_group.citadel.name}"
    location                  = "${azurerm_resource_group.citadel.location}"
    tags                      = "${azurerm_resource_group.citadel.tags}" 
    account_tier              = "Standard"
    account_replication_type  = "LRS"
}