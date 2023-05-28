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
#   host = var.DATABRICKS_HOST
#   token = var.DATABRICKS_TOKEN
    host = ${DATABRICKS_HOST}
    token = ${DATABRICKS_TOKEN}
}
