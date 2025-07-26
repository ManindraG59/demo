data "azurerm_billing_mca_account_scope" "billing" {
  billing_account_name = local.billing_account_id
  billing_profile_name = local.billing_profile_id
  invoice_section_name = local.invoice_section_id
}
data "azurerm_role_definition" "contributor" {
  name = "Contributor"
}
