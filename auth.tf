#Darabricks Provider
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
    databricks = {
      source = "databricks/databricks"
    }
  }
}

# Use Azure CLI authentication.
provider "databricks" {
  host = var.Databricks_host
  token = var.Databricks_token
#     host = ${DATABRICKS_HOST}
#     token = ${DATABRICKS_TOKEN}
}
