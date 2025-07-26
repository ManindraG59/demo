locals {
  spoke_role_assignments = {
    "ADF Configuration Permissions" = [
      local.mi_github_actions_mastery_data_engineering_deployment
    ],
    "App Configuration Custom Role" = [
      local.mi_github_actions_mastermind_release
    ],
    "App Configuration Data Owner" = [
      local.mi_github_actions_mastermind_release,
      local.pim_team_cloud_engineering
    ],
    "Azure Kubernetes Service Cluster User Role" = [
      local.sg_spoke_k8s_user_access
    ],
    "Autobots Cosmos DB" = [
      local.mi_autobots_reporting,
      local.mi_autobots_reporting_tooling,
      local.mi_snowman_custom_code
    ]
    "Contributor" = [
      local.mi_github_actions_cloud_infra,
      local.mi_github_actions_terraform_mastery_resource_group_management,
      local.mi_github_actions_terraform_mastery_confluentcloud,
      local.pim_team_cloud_engineering,
      local.pim_team_platform_support,
      local.pim_team_stratus,
      local.sg_team_cloud_engineering_leads,
    ],
    "CosmosRestoreOperator" = [
      local.sp_de_dryrun
    ]
    "Cost Management Reader" = [
      local.sg_cost_management_reader,
      local.sg_team_snowman
    ],
    "Cost Management Contributor" = [
      local.sg_cost_management_contributor
    ],
    "Database Resource Viewer" = [
      local.sg_team_ragnar
    ]
    "Key Vault Administrator" = [
      local.pim_team_cloud_engineering,
      local.pim_team_platform_support,
      local.pim_team_stratus,
      local.sg_github_mi_spoke_akv_contributor,
      local.sg_team_cloud_engineering_leads,
    ],
    "Key Vault Secrets User" = [
      local.sg_github_mi_spoke_akv_reader,
      local.sg_team_platform_support,
      local.sg_team_cloud_engineering,
    ],
    "Monitoring Reader" = [
      local.sg_team_everest,
      local.sg_team_cosmos
    ],
    "Postgres - Cosmos Database Restore Permissions" = [
      local.pim_team_everest,
      local.mi_github_actions_mastery_data_engineering_deployment
    ],
    "Reader" = [
      local.mi_artifactory_cleanup,
      local.mi_artifactory_cleanup_tooling,
      local.mi_jfrog_reporting_mohs1_dev,
      local.mi_jfrog_reporting_mglob_prod,
      local.mi_autobots_reporting,
      local.mi_autobots_reporting_tooling,
      local.mi_snowman_custom_code,
      local.mi_github_actions_cloud_engineering_custom_code,
      local.sg_github_mi_sub_reader,
      local.sg_security_operations,
      local.sg_team_cloud_engineering,
      local.sg_team_cloud_engineering_ro,
      local.sg_team_everest,
      local.sg_team_grc,
      local.sg_team_monkey_wrench,
      local.sg_team_platform_support,
      local.sg_team_ragnar,
      local.sg_team_watchtower,
      local.sp_az_automation,
      local.sp_masterycost_api,
      local.sg_subscription_reader,
      local.mi_masterycost_mohd1_dev,
      local.mi_masterycost_mohpc_prod,
      local.mi_masterycost_mohpe_prod,
      local.mi_masterycost_mohs1_dev
    ],
    "Security Reader" = [
      local.sg_security_operations
    ],
    "User Access Administrator" = [
      local.mi_github_actions_cloud_infra,
      local.mi_github_actions_terraform_mastery_confluentcloud,
      local.pim_team_cloud_engineering,
      local.pim_team_platform_support,
      local.pim_team_stratus,
      local.sg_team_cloud_engineering_leads,
      local.sp_az_automation,
    ],
    (azurerm_role_definition.ce_custom_role.name) = [
      local.sg_team_cloud_engineering
    ],
    (azurerm_role_definition.de_reader.name) = [
      local.sg_team_cosmos
    ],
  }

  hub_role_assignments = {
    "Azure Kubernetes Service Cluster User Role" = [
      local.sg_hub_k8s_user_access
    ],
    "Contributor" = [
      local.mi_github_actions_cloud_infra,
      local.mi_github_actions_terraform_mastery_resource_group_management,
      local.pim_team_cloud_engineering,
      local.pim_team_platform_support,
      local.pim_team_stratus,
      local.sg_team_cloud_engineering_leads,
    ],
    "Key Vault Administrator" = [
      local.pim_team_cloud_engineering,
      local.pim_team_platform_support,
      local.pim_team_stratus,
      local.sg_team_cloud_engineering_leads,
    ],
    "Key Vault Secrets User" = [
      local.sg_team_platform_support,
      local.sg_team_cloud_engineering,
    ],
    "Postgres - Cosmos Database Restore Permissions" = [
      local.pim_team_everest,
      local.mi_github_actions_mastery_data_engineering_deployment
    ],
    "Reader" = [
      local.mi_github_actions_cloud_engineering_custom_code,
      local.sg_team_cloud_engineering,
      local.sg_team_everest,
      local.sg_team_platform_support,
      local.sg_team_ragnar,
      local.mi_snowman_custom_code,
      local.sg_subscription_reader
    ],
    "Cost Management Contributor" = [
      local.sg_cost_management_contributor
    ],
    "User Access Administrator" = [
      local.pim_team_cloud_engineering,
      local.pim_team_platform_support,
      local.pim_team_stratus,
      local.sg_team_cloud_engineering_leads,
    ],
    (azurerm_role_definition.ce_custom_role.name) = [
      local.sg_team_cloud_engineering
    ],
  }
  ops_hub_role_assignments = {
    "Azure Kubernetes Service Cluster User Role" = [
      local.sg_ops_hub_k8s_user_access
    ],
    "Contributor" = [
      local.mi_github_actions_cloud_infra,
      local.mi_github_actions_terraform_mastery_resource_group_management,
      local.pim_team_cloud_engineering,
      local.pim_team_platform_support,
      local.pim_team_stratus,
      local.sg_team_cloud_engineering_leads,
    ],
    "Key Vault Administrator" = [
      local.pim_team_cloud_engineering,
      local.pim_team_platform_support,
      local.pim_team_stratus,
      local.sg_team_cloud_engineering_leads,
      local.sg_github_mi_ops_hub_akv_contributor
    ],
    "Key Vault Secrets User" = [
      local.sg_team_platform_support,
      local.sg_team_cloud_engineering,
      local.sg_github_mi_ops_hub_akv_reader
    ],
    "Postgres - Cosmos Database Restore Permissions" = [
      local.pim_team_everest,
      local.mi_github_actions_mastery_data_engineering_deployment
    ],
    "Reader" = [
      local.mi_artifactory_cleanup,
      local.mi_github_actions_cloud_engineering_custom_code,
      local.sg_github_mi_sub_reader,
      local.sg_team_cloud_engineering,
      local.sg_team_everest,
      local.sg_team_monkey_wrench,
      local.sg_team_platform_support,
      local.sg_team_ragnar,
      local.sg_security_operations,
      local.mi_snowman_custom_code,
      local.sg_subscription_reader,
      local.sp_az_automation,
      local.sp_masterycost_api,
      local.mi_masterycost_mohd1_dev,
      local.mi_masterycost_mohpc_prod,
      local.mi_masterycost_mohpe_prod,
      local.mi_masterycost_mohs1_dev
    ],
    "Cost Management Contributor" = [
      local.sg_cost_management_contributor
    ],
    "Cost Management Reader" = [
      local.sg_cost_management_reader,
      local.sg_team_snowman
    ],
    "Database Resource Viewer" = [
      local.sg_team_ragnar
    ]
    "User Access Administrator" = [
      local.mi_github_actions_cloud_infra,
      local.pim_team_cloud_engineering,
      local.pim_team_platform_support,
      local.pim_team_stratus,
      local.sg_team_cloud_engineering_leads,
      local.sp_az_automation
    ],
    (azurerm_role_definition.ce_custom_role.name) = [
      local.sg_team_cloud_engineering
    ],
    (azurerm_role_definition.de_reader.name) = [
      local.sg_team_cosmos
    ]
  }

  global_hub_role_assignments = {
    "Azure Kubernetes Service Cluster User Role" = [
      local.sg_global_hub_k8s_user_access
    ],
    "Contributor" = [
      local.mi_github_actions_cloud_infra,
      local.mi_github_actions_terraform_mastery_resource_group_management,
      local.pim_team_cloud_engineering,
      local.pim_team_platform_support,
      local.pim_team_stratus,
      local.sg_team_cloud_engineering_leads,
    ],
    "Key Vault Administrator" = [
      local.pim_team_cloud_engineering,
      local.pim_team_platform_support,
      local.pim_team_stratus,
      local.sg_team_cloud_engineering_leads,
      local.sg_github_mi_global_hub_akv_contributor
    ],
    "Key Vault Secrets User" = [
      local.sg_team_platform_support,
      local.sg_team_cloud_engineering,
      local.sg_github_mi_global_hub_akv_reader
    ],
    "Postgres - Cosmos Database Restore Permissions" = [
      local.pim_team_everest,
      local.mi_github_actions_mastery_data_engineering_deployment
    ],
    "Reader" = [
      local.mi_artifactory_cleanup,
      local.mi_github_actions_cloud_engineering_custom_code,
      local.sg_github_mi_sub_reader,
      local.sg_team_cloud_engineering,
      local.sg_team_everest,
      local.sg_team_monkey_wrench,
      local.sg_team_platform_support,
      local.sg_team_ragnar,
      local.sg_security_operations,
      local.mi_snowman_custom_code,
      local.sg_subscription_reader,
      local.sp_az_automation,
      local.sp_masterycost_api,
      local.mi_masterycost_mohd1_dev,
      local.mi_masterycost_mohpc_prod,
      local.mi_masterycost_mohpe_prod,
      local.mi_masterycost_mohs1_dev
    ],
    "Cost Management Contributor" = [
      local.sg_cost_management_contributor
    ],
    "Cost Management Reader" = [
      local.sg_cost_management_reader,
      local.sg_team_snowman
    ],
    "Database Resource Viewer" = [
      local.sg_team_ragnar
    ],
    "User Access Administrator" = [
      local.mi_github_actions_cloud_infra,
      local.pim_team_cloud_engineering,
      local.pim_team_platform_support,
      local.pim_team_stratus,
      local.sg_team_cloud_engineering_leads,
      local.sp_az_automation
    ],
    (azurerm_role_definition.ce_custom_role.name) = [
      local.sg_team_cloud_engineering
    ],
    (azurerm_role_definition.de_reader.name) = [
      local.sg_team_cosmos
    ]
  }

  spoke_flattened_role_assignments = toset(flatten([
    for role, principals in local.spoke_role_assignments : [
      for principal in principals : {
        role      = role
        principal = principal
      }
    ]
  ]))

  spoke_role_assignments_iterator = { for role_assignment in local.spoke_flattened_role_assignments : md5("${role_assignment.role}.${role_assignment.principal}") => role_assignment }

  hub_flattened_role_assignments = toset(flatten([
    for role, principals in local.hub_role_assignments : [
      for principal in principals : {
        role      = role
        principal = principal
      }
    ]
  ]))

  hub_role_assignments_iterator = { for role_assignment in local.hub_flattened_role_assignments : md5("${role_assignment.role}.${role_assignment.principal}") => role_assignment }

  ops_hub_flattened_role_assignments = toset(flatten([
    for role, principals in local.ops_hub_role_assignments : [
      for principal in principals : {
        role      = role
        principal = principal
      }
    ]
  ]))

  ops_hub_role_assignments_iterator = { for role_assignment in local.ops_hub_flattened_role_assignments : "${role_assignment.role}.${role_assignment.principal}" => role_assignment }

  global_hub_flattened_role_assignments = toset(flatten([
    for role, principals in local.global_hub_role_assignments : [
      for principal in principals : {
        role      = role
        principal = principal
      }
    ]
  ]))

  global_hub_role_assignments_iterator = { for role_assignment in local.global_hub_flattened_role_assignments : "${role_assignment.role}.${role_assignment.principal}" => role_assignment }

}



resource "azurerm_role_assignment" "role_assignment" {
  for_each             = local.spoke_role_assignments_iterator
  scope                = azurerm_management_group.mastery_management_groups["customer_subscriptions"].id
  role_definition_name = each.value.role
  principal_id         = each.value.principal
}

resource "azurerm_role_assignment" "role_assignment_mastery_spoke" {
  for_each             = local.spoke_role_assignments_iterator
  scope                = azurerm_management_group.mastery_management_groups["mastery_spoke_subscriptions"].id
  role_definition_name = each.value.role
  principal_id         = each.value.principal
}

resource "azurerm_role_assignment" "role_assignment_mastery_hub" {
  for_each             = local.hub_role_assignments_iterator
  scope                = azurerm_management_group.mastery_management_groups["mastery_hub_subscriptions"].id
  role_definition_name = each.value.role
  principal_id         = each.value.principal
}

resource "azurerm_role_assignment" "role_assignment_mastery_ops_hub" {
  for_each             = local.ops_hub_role_assignments_iterator
  scope                = azurerm_management_group.mastery_management_groups["mastery_ops_hub_subscriptions"].id
  role_definition_name = each.value.role
  principal_id         = each.value.principal
}

resource "azurerm_role_assignment" "role_assignment_mastery_global_hub" {
  for_each             = local.global_hub_role_assignments_iterator
  scope                = azurerm_management_group.mastery_management_groups["mastery_global_hub_subscriptions"].id
  role_definition_name = each.value.role
  principal_id         = each.value.principal
}

# Add the mastery-vmss repo MI Contributor access to allow creation of RGs for Packer builds
resource "azurerm_role_assignment" "vmss_ops_contributor" {
  scope = format("/subscriptions/%s",
    azurerm_subscription.subscription["masteryoperations"].subscription_id
  )
  role_definition_name = "Contributor"
  principal_id         = local.mi_github_actions_mastery_vmss
}

resource "azurerm_role_assignment" "opencost_billing_api" {
  scope              = azurerm_management_group.mastery_management_groups["mastery_hub_subscriptions"].id
  role_definition_id = azurerm_role_definition.open_cost_role.role_definition_resource_id
  principal_id       = local.sp_mastery_global_opencost
}

resource "azurerm_role_assignment" "cost_export_role" {
  scope              = local.tenant_root_group_id
  role_definition_id = azurerm_role_definition.cost_mgmt_export_role.role_definition_resource_id
  principal_id       = local.sp_mastery_global_coeus_invoice
}

resource "azurerm_role_assignment" "tenant_management_group_reader" {
  scope                = local.tenant_root_group_id
  role_definition_name = "Reader"
  principal_id         = local.mi_github_actions_cloud_monitoring
}

resource "azurerm_role_assignment" "cost_management_role" {
  scope                = local.tenant_root_group_id
  role_definition_name = "Cost Management Contributor"
  principal_id         = local.mi_github_actions_cloud_monitoring
}

resource "azurerm_role_assignment" "pim_reservation_purchaser" {
  scope                = local.tenant_root_group_id
  principal_id         = local.pim_reservation_purchaser
  role_definition_name = "Reservation Purchaser"
}

resource "azurerm_role_assignment" "pim_cost_management_reader" {
  scope                = local.tenant_root_group_id
  principal_id         = local.pim_cost_management_reader
  role_definition_name = "Cost Management Reader"
}

resource "azurerm_role_assignment" "pim_savings_plan_purchaser" {
  scope                = local.tenant_root_group_id
  principal_id         = local.pim_savings_plan_purchaser
  role_definition_name = "Savings plan Purchaser"
}

resource "azurerm_role_assignment" "maintenance_alert_reader" {
  scope                = local.tenant_root_group_id
  role_definition_name = "Reader"
  principal_id         = local.mi_maintenance_alerts
}

resource "azurerm_role_assignment" "grafana_azure_monitor_reader" {
  scope                = local.tenant_root_group_id
  role_definition_name = "Reader"
  principal_id         = local.mi_grafana_mglob_prod
}

resource "azurerm_role_assignment" "grafana_azure_monitor_monitoring" {
  scope                = local.tenant_root_group_id
  role_definition_name = "Monitoring Reader"
  principal_id         = local.mi_grafana_mglob_prod
}

resource "azurerm_role_assignment" "tenant_root_support_request_contributor" {
  for_each = {
    "cloud-engineering" = local.sg_team_cloud_engineering,
    "cosmos"            = local.sg_team_cosmos,
    "everest"           = local.sg_team_everest,
    "support"           = local.sg_support_request_contributor
  }
  scope                = local.tenant_root_group_id
  role_definition_name = "Support Request Contributor"
  principal_id         = each.value
}
