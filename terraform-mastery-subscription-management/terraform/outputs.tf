output "subscriptions" {
  value = {
    for s in azurerm_subscription.subscription : s.subscription_name => s.subscription_id
  }
}
