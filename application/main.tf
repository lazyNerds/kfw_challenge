# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  subscription_id = "99f15f42-0414-43a6-b15b-0868234ef1d6"
  tenant_id       = "bfe3e775-4326-4a0a-92dc-b73064a9ce24"
}

#data "azurerm_cosmosdb_account" "example" {
#  name                = "tfex-cosmosdb-account"
#  resource_group_name = "challenge_04_manual"
#}

#resource "azurerm_cosmosdb_mongo_database" "example" {
#  name                = "tfex-cosmos-mongo-db"
#  resource_group_name = data.azurerm_cosmosdb_account.example.resource_group_name
#  account_name        = data.azurerm_cosmosdb_account.example.name
#  throughput          = 400
#}