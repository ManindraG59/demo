terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "Mastery"
    workspaces {
      name = "terraform-mastery-subscription-management"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "df84e175-b5f9-43aa-9ac1-77919131563c" #masteryoperations
}

provider "azuread" {}
