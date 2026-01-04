provider "azurerm" {
  features {}
}

provider "azuread" {}

# TODO:
# - Entra app registration + service principal
# - federated identity credential for GitHub OIDC
# - role assignments at RG/subscription scope (least privilege)
