variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}
variable "env" {}


provider "azurerm" {
        subscription_id = "${var.subscription_id}"
        client_id  = "${var.client_id}"
        client_secret  = "${var.client_secret}"
        tenant_id  = "${var.tenant_id}"
}
### リソースグループ
resource "azurerm_resource_group" "rg" {
        name = "${local.res_group}"
        location = "${local.region}"
        tags = {
                environment = "${var.env}"
        }
}

### WebApp


### ストレージアカウント

