resource "azurerm_resource_group" "citadel" {
    name                      = "${var.rg}"
    location                  = "${var.loc}"
    tags                      = "${var.tags}" 
}

resource "random_id" "rnd" {
    keepers = {
        rg = "${azurerm_resource_group.citadel.id}"
    }
    byte_length = 6
}
resource "azurerm_storage_account" "sa" {
    name                      = "sa${var.tags["source"]}${random_id.rnd.hex}"
    resource_group_name       = "${azurerm_resource_group.citadel.name}"
    location                  = "${azurerm_resource_group.citadel.location}"
    tags                      = "${azurerm_resource_group.citadel.tags}" 
    account_replication_type  = "LRS"
}