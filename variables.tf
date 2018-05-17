variable "rg" {
    default = "terraformCitadelWorkshop"
}

variable "loc" {
    default = "West Europe"
}

variable "tags" {
    type = "map"
    default = {
        environment = "training"
        source      = "citadel"
    }
}