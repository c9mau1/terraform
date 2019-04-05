terraform {
  backend "atlas" {
    name = "test-20190404/test"
  }
}

provider "azurerm" {
}

### リソースグループ
resource "azurerm_resource_group" "rg" {
        name = "${local.res_group}"
        location = "${local.region}"
}
