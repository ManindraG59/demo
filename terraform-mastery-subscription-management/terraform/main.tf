resource "azurerm_subscription" "subscription" {
  for_each          = local.subscriptions
  subscription_name = each.key
  billing_scope_id  = data.azurerm_billing_mca_account_scope.billing.id
  tags = {
    "customer_id" : each.value.id,
    "customer_name" : each.key
    "payment-plan" : "azure-ea",
    "region" : "centralus,eastus2"
  }

  lifecycle {
    ignore_changes = [
      alias
    ]
    prevent_destroy = true
  }
}

resource "azurerm_role_assignment" "rg_mgmt_mi_user_access_admin" {
  for_each             = local.subscriptions
  scope                = format("/subscriptions/%s", azurerm_subscription.subscription[each.key].subscription_id)
  role_definition_name = "User Access Administrator"
  principal_id         = local.mi_github_actions_terraform_mastery_resource_group_management
}

resource "azurerm_management_group" "mastery_management_groups" {
  for_each                   = local.azure_management_groups
  name                       = each.key
  display_name               = each.value.display_name
  parent_management_group_id = each.value.parent_id
}

resource "azurerm_management_group_subscription_association" "management_groups" {
  for_each            = local.subscriptions
  management_group_id = azurerm_management_group.mastery_management_groups[each.value.management_group].id
  subscription_id     = format("/subscriptions/%s", azurerm_subscription.subscription[each.key].subscription_id)
}
