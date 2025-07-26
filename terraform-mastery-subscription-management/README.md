# terraform-mastery-subscription-management
This repository will be used to maintain and deploy Azure subscriptions.

## How to use
To deploy or delete a subscription, update the `subscriptions` variable in `locals.tf`.

Once a new subscription is created, email Armen Yeterian `aryeteri@microsoft.com` in order to add the subscription to our Mission Critical Support agreement.

## Service Principal Configuration
The service principal running these scripts needs the following permissions:

`Azure subscription creator` billing role assigned to the invoice section. [documentation](https://docs.microsoft.com/en-us/azure/cost-management-billing/manage/understand-mca-roles#billing-role-definitions)

`User Access Administrator` at the root scope. [documentation](https://docs.microsoft.com/en-us/azure/role-based-access-control/elevate-access-global-admin#azure-portal)
