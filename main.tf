terraform {
  backend "remote" {
    organization = "test-20190404"
    workspaces {
      name = "test"
    }
  }
}

provider "azurerm" {
}

### リソースグループ
resource "azurerm_resource_group" "rg" {
        name = "${local.res_group}"
        location = "${local.region}"
}
