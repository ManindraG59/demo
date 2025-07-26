resource "azurerm_role_definition" "aks_automation_role" {
  name        = "Azure AKS Automation SP Role"
  scope       = local.tenant_root_group_id
  description = "This is a custom role created via Terraform. This role provides permissions needed by AKS deployment SPs."

  permissions {
    actions = [
      "Microsoft.Authorization/*/read",
      "Microsoft.Insights/alertRules/*",
      "Microsoft.Resources/deployments/write",
      "Microsoft.Resources/subscriptions/operationresults/read",
      "Microsoft.Resources/subscriptions/read",
      "Microsoft.Resources/subscriptions/resourceGroups/read",
      "Microsoft.Support/*",
      "Microsoft.ContainerService/managedClusters/listClusterUserCredential/action",
      "Microsoft.ContainerService/managedClusters/listClusterAdminCredential/action",
      "Microsoft.ContainerService/managedClusters/accessProfiles/listCredential/action",
      "Microsoft.ContainerService/managedClusters/read",
      "*/read"
    ]
    not_actions = []
    data_actions = [
      "Microsoft.Kubernetes/connectedClusters/*",
      "Microsoft.ContainerService/managedClusters/*"
    ]
    not_data_actions = [
      "Microsoft.ContainerService/managedClusters/resourcequotas/write",
      "Microsoft.ContainerService/managedClusters/resourcequotas/delete",
      "Microsoft.ContainerService/managedClusters/namespaces/write",
      "Microsoft.ContainerService/managedClusters/namespaces/delete"
    ]
  }

  assignable_scopes = [local.tenant_root_group_id]

}

resource "azurerm_role_definition" "database_backup_retention" {
  name        = "Data-Engineering Custom Role"
  scope       = local.tenant_root_group_id
  description = "This is a custom role created via Terraform. This role provides permissions needed on the subscription level to manage sql backup and retention policies as well as cluster privildges to run code locally."

  permissions {
    actions = [
      "Microsoft.Sql/locations/longTermRetentionBackups/read",
      "Microsoft.Sql/locations/longTermRetentionServers/longTermRetentionBackups/read",
      "Microsoft.Sql/locations/longTermRetentionServers/longTermRetentionDatabases/longTermRetentionBackups/read",
      "Microsoft.DocumentDB/locations/restorableDatabaseAccounts/read",
      "Microsoft.Datafactory/register/action"
    ]
    not_actions      = []
    data_actions     = []
    not_data_actions = []
  }

  assignable_scopes = [local.tenant_root_group_id]
}

resource "azurerm_role_definition" "msft_support_request_role" {
  name        = "Microsoft Support Custom Role"
  scope       = local.tenant_root_group_id
  description = "This is a custom role created via Terraform. This role provides permissions needed on the subscription level to open up microsoft support tickets."

  permissions {
    actions = [
      "Microsoft.Support/lookUpResourceId/action",
      "Microsoft.Support/register/action",
      "Microsoft.Support/checkNameAvailability/action",
      "Microsoft.Support/operationresults/read",
      "Microsoft.Support/operationsstatus/read",
      "Microsoft.Support/operations/read",
      "Microsoft.Support/services/read",
      "Microsoft.Support/services/problemClassifications/read",
      "Microsoft.Support/supportTickets/read",
      "Microsoft.Support/supportTickets/write"
    ]
    not_actions      = []
    data_actions     = []
    not_data_actions = []
  }

  assignable_scopes = [local.tenant_root_group_id]
}

resource "azurerm_role_definition" "azure_data_factory_reader_role" {
  name        = "Azure Data Factory Reader"
  scope       = local.tenant_root_group_id
  description = "This is a custom role created via Terraform. This role provides permissions needed on the subscription level to read Azure Data Factory resources."

  permissions {
    actions = [
      "Microsoft.DataFactory/factories/read",
      "Microsoft.DataFactory/factories/adfcdcs/read",
      "Microsoft.DataFactory/factories/adflinkconnections/read",
      "Microsoft.DataFactory/factories/credentials/read",
      "Microsoft.DataFactory/factories/getDataPlaneAccess/read",
      "Microsoft.DataFactory/factories/getFeatureValue/read",
      "Microsoft.DataFactory/factories/operationResults/read",
      "Microsoft.DataFactory/factories/pipelineruns/read",
      "Microsoft.DataFactory/factories/pipelineruns/activityruns/read",
      "Microsoft.DataFactory/factories/pipelineruns/queryactivityruns/read",
      "Microsoft.DataFactory/factories/providers/Microsoft.Insights/diagnosticSettings/read",
      "Microsoft.DataFactory/factories/providers/Microsoft.Insights/metricDefinitions/read",
      "Microsoft.DataFactory/factories/queryFeaturesValue/read",
      "Microsoft.DataFactory/factories/querypipelineruns/read",
      "Microsoft.DataFactory/factories/querytriggerruns/read",
      "Microsoft.DataFactory/factories/triggerruns/read",
      "Microsoft.DataFactory/factories/dataflows/read",
      "Microsoft.DataFactory/factories/dataMappers/read",
      "Microsoft.DataFactory/factories/datasets/read",
      "Microsoft.DataFactory/factories/sandboxpipelineruns/read",
      "Microsoft.DataFactory/factories/sandboxpipelineruns/sandboxActivityRuns/read",
      "Microsoft.DataFactory/factories/globalParameters/read",
      "Microsoft.DataFactory/factories/integrationruntimes/read",
      "Microsoft.DataFactory/factories/integrationruntimes/getstatus/read",
      "Microsoft.DataFactory/factories/integrationruntimes/monitoringdata/read",
      "Microsoft.DataFactory/factories/integrationruntimes/nodes/read",
      "Microsoft.DataFactory/factories/integrationruntimes/outboundNetworkDependenciesEndpoints/read",
      "Microsoft.DataFactory/factories/linkedServices/read",
      "Microsoft.DataFactory/factories/managedVirtualNetworks/read",
      "Microsoft.DataFactory/factories/managedVirtualNetworks/managedPrivateEndpoints/read",
      "Microsoft.DataFactory/factories/privateEndpointConnectionProxies/read",
      "Microsoft.DataFactory/factories/privateEndpointConnectionProxies/operationresults/read",
      "Microsoft.DataFactory/factories/privateEndpointConnectionProxies/operationstatuses/read",
      "Microsoft.DataFactory/factories/privateEndpointConnections/read",
      "Microsoft.DataFactory/factories/privateLinkResources/read",
      "Microsoft.DataFactory/factories/pipelines/read",
      "Microsoft.DataFactory/factories/pipelines/pipelineruns/read",
      "Microsoft.DataFactory/factories/pipelines/pipelineruns/activityruns/progress/read",
      "Microsoft.DataFactory/factories/providers/Microsoft.Insights/logDefinitions/read",
      "Microsoft.DataFactory/factories/triggers/read",
      "Microsoft.DataFactory/factories/triggers/triggerruns/read",
      "Microsoft.DataFactory/datafactories/read",
      "Microsoft.DataFactory/datafactories/activitywindows/read",
      "Microsoft.DataFactory/datafactories/providers/Microsoft.Insights/diagnosticSettings/read",
      "Microsoft.DataFactory/datafactories/providers/Microsoft.Insights/metricDefinitions/read",
      "Microsoft.DataFactory/datafactories/datasets/read",
      "Microsoft.DataFactory/datafactories/datasets/activitywindows/read",
      "Microsoft.DataFactory/datafactories/datasets/sliceruns/read",
      "Microsoft.DataFactory/datafactories/datasets/slices/read",
      "Microsoft.DataFactory/datafactories/tables/read",
      "Microsoft.DataFactory/datafactories/gateways/read",
      "Microsoft.DataFactory/datafactories/linkedServices/read",
      "Microsoft.DataFactory/datafactories/datapipelines/read",
      "Microsoft.DataFactory/datafactories/datapipelines/activities/activitywindows/read",
      "Microsoft.DataFactory/datafactories/datapipelines/activitywindows/read",
      "Microsoft.DataFactory/datafactories/runs/loginfo/read"
    ]
    not_actions      = []
    data_actions     = []
    not_data_actions = []
  }

  assignable_scopes = [local.tenant_root_group_id]
}

resource "azurerm_role_definition" "eventhub_role" {
  name        = "Event Hub Access Role"
  scope       = local.tenant_root_group_id
  description = "This is a custom role created via Terraform. This role provides permissions needed on the subscription level to access Event Hub queries."

  permissions {
    actions = [
      "Microsoft.EventHub/availableClusterRegions/read",
      "Microsoft.EventHub/checkNameAvailability/action",
      "Microsoft.EventHub/checkNamespaceAvailability/action",
      "Microsoft.EventHub/clusters/namespaces/read",
      "Microsoft.EventHub/clusters/operationresults/read",
      "Microsoft.EventHub/clusters/providers/Microsoft.Insights/metricDefinitions/read",
      "Microsoft.EventHub/clusters/read",
      "Microsoft.EventHub/namespaces/authorizationRules/action",
      "Microsoft.EventHub/namespaces/authorizationRules/listkeys/action",
      "Microsoft.EventHub/namespaces/eventhubs/authorizationRules/action",
      "Microsoft.EventHub/namespaces/eventhubs/authorizationRules/listkeys/action",
      "Microsoft.EventHub/namespaces/read",
      "Microsoft.EventHub/namespaces/*/read",
      "Microsoft.EventHub/operations/read",
      "Microsoft.EventHub/register/action",
      "Microsoft.EventHub/sku/read",
      "Microsoft.EventHub/sku/regions/read",
      "Microsoft.EventHub/unregister/action",
      "Microsoft.StreamAnalytics/locations/CompileQuery/action",
      "Microsoft.StreamAnalytics/locations/SampleInput/action",
      "Microsoft.StreamAnalytics/locations/TestQuery/action",
      "Microsoft.StreamAnalytics/locations/operationresults/Read",
      "Microsoft.StreamAnalytics/locations/quotas/Read",
      "Microsoft.StreamAnalytics/operations/Read",
      "Microsoft.StreamAnalytics/streamingjobs/*"
    ]
    not_actions      = []
    data_actions     = []
    not_data_actions = []
  }

  assignable_scopes = [local.tenant_root_group_id]
}

resource "azurerm_role_definition" "postgres_flex_pep_rw" {
  name        = "Postgres Flex PEP Read Write Role"
  scope       = local.tenant_root_group_id
  description = "This is a custom role created via Terraform. This role provides permissions needed on the subscription level to grant read/write acees for Flex Server PEP resources."

  permissions {
    actions = [
      "Microsoft.Authorization/policyAssignments/resourceManagementPrivateLinks/privateEndpointConnections/read",
      "Microsoft.Network/privateEndpoints/write"
    ]
    not_actions      = []
    data_actions     = []
    not_data_actions = []
  }

  assignable_scopes = [local.tenant_root_group_id]
}

resource "azurerm_role_definition" "dns_zones_reader" {
  name        = "DNS Zones Reader Role"
  scope       = local.tenant_root_group_id
  description = "This is a custom role created via Terraform. This role provides permissions needed on the subscription level to grant read access for Network DNS Zones."

  permissions {
    actions = [
      "Microsoft.Network/dnszones/read"
    ]
    not_actions      = []
    data_actions     = []
    not_data_actions = []
  }

  assignable_scopes = [local.tenant_root_group_id]
}

resource "azurerm_role_definition" "dns_zones_a_record_write" {
  name        = "DNS Zones A Record Create Role"
  scope       = local.tenant_root_group_id
  description = "This is a custom role created via Terraform. This role provides permissions needed on the subscription level to grant write access for Network DNS Zones A Record Creations."

  permissions {
    actions = [
      "Microsoft.Network/privateDnsZones/A/write"
    ]
    not_actions      = []
    data_actions     = []
    not_data_actions = []
  }

  assignable_scopes = [local.tenant_root_group_id]
}

resource "azurerm_role_definition" "cosmos_data_explorer_access" {
  name        = "Cosmos Data Explorer Access - NoSQL"
  scope       = local.tenant_root_group_id
  description = "This is a custom role created via Terraform. This role provides permissions needed on the subscription level to access the Cosmos Data Explorer for NoSQL."

  permissions {
    actions = [
      "Microsoft.DocumentDB/databaseAccounts/listConnectionStrings/action",
      "Microsoft.DocumentDB/databaseAccounts/*/read",
      "Microsoft.DocumentDB/databaseAccounts/readonlykeys/action",
      "Microsoft.Resources/subscriptions/resourceGroups/read",
    ]
    not_actions      = []
    data_actions     = []
    not_data_actions = []
  }
  assignable_scopes = [local.tenant_root_group_id]
}

resource "azurerm_role_definition" "cosmos_data_explorer_access_mongo" {
  name        = "Cosmos Data Explorer Access - Mongo"
  scope       = local.tenant_root_group_id
  description = "This is a custom role created via Terraform. This role provides permissions needed on the subscription level to access the Cosmos Data Explorer for Mongo."

  permissions {
    actions = [
      "Microsoft.DocumentDB/databaseAccounts/listConnectionStrings/action",
      "Microsoft.DocumentDB/databaseAccounts/*/read",
      "Microsoft.DocumentDB/databaseAccounts/readonlykeys/action",
      "Microsoft.Resources/subscriptions/resourceGroups/read",
    ]
    not_actions      = []
    data_actions     = []
    not_data_actions = []
  }
  assignable_scopes = [local.tenant_root_group_id]
}

resource "azurerm_role_definition" "database_restore_permissions" {
  name        = "Postgres - Cosmos Database Restore Permissions"
  scope       = local.tenant_root_group_id
  description = "This is a custom role created via Terraform. This role creates the needed permissions for automated database restores."

  permissions {
    actions = [
      "Microsoft.DocumentDB/databaseAccounts/restore/action",
      "Microsoft.DocumentDB/locations/restorableDatabaseAccounts/restore/action",
      "Microsoft.DBforPostgreSQL/flexibleServers/write",
    ]
    not_actions      = []
    data_actions     = []
    not_data_actions = []
  }
  assignable_scopes = [local.tenant_root_group_id]
}

resource "azurerm_role_definition" "adf_configuration_permissions" {
  name        = "ADF Configuration Permissions"
  scope       = local.tenant_root_group_id
  description = "This is a custom role created via Terraform. This role creates the needed permissions configuring the repository for the factory."

  permissions {
    actions = [
      "Microsoft.DataFactory/locations/configureFactoryRepo/action",
    ]
    not_actions      = []
    data_actions     = []
    not_data_actions = []
  }
  assignable_scopes = [local.tenant_root_group_id]
}

resource "azurerm_role_definition" "app_config_config_store_operator" {
  name        = "App Configuration Custom Role"
  scope       = local.tenant_root_group_id
  description = "This is a custom role created via Terraform. This role provides permissions needed on the subscription level to manage App Configuration resources."

  permissions {
    actions = [
      "Microsoft.AppConfiguration/configurationStores/ListKeys/action",
      "Microsoft.AppConfiguration/configurationStores/ListKeyValue/action"
    ]
    not_actions      = []
    data_actions     = []
    not_data_actions = []
  }
  assignable_scopes = [local.tenant_root_group_id]
}

resource "azurerm_role_definition" "database_resource_viewer" {
  name        = "Database Resource Viewer"
  scope       = local.tenant_root_group_id
  description = "This is a custom role created via Terraform. This role provides permissions needed on the subscription level to access Event Hub queries."

  permissions {
    actions = [
      "Microsoft.Authorization/*/read",
      "Microsoft.ResourceHealth/availabilityStatuses/read",
      "Microsoft.Sql/servers/read",
      "Microsoft.Sql/servers/databases/read",
      "Microsoft.DBforPostgreSQL/flexibleServers/read",
      "Microsoft.DocumentDB/databaseAccounts/services/read",
      "Microsoft.Resources/subscriptions/read",
      "Microsoft.DocumentDB/databaseAccounts/sqlDatabases/read",
      "Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/read",
      "Microsoft.DBforPostgreSQL/serversv2/read",
      "Microsoft.DBforPostgreSQL/serversv2/configurations/read",
      "Microsoft.DBforMySQL/flexibleServers/databases/read",
      "Microsoft.DBforPostgreSQL/flexibleServers/configurations/read",
      "Microsoft.DBforPostgreSQL/flexibleServers/databases/read",
      "Microsoft.Resources/subscriptions/resources/read",
      "Microsoft.Resources/subscriptions/resourcegroups/resources/read",
      "Microsoft.DBforPostgreSQL/servers/read",
      "Microsoft.DocumentDB/databaseAccounts/mongodbDatabases/collections/read",
      "Microsoft.Resources/subscriptions/resourceGroups/read",
      "Microsoft.DocumentDB/databaseAccounts/mongodbDatabases/read",
      "Microsoft.Resources/resources/read",
      "Microsoft.DocumentDB/databaseAccounts/read",
      "Microsoft.Resources/subscriptions/resourcegroups/deployments/read",
      "Microsoft.Resources/deployments/read",
      "Microsoft.Resources/links/read",
      "Microsoft.DocumentDB/databaseAccounts/mongodbRoleDefinitions/read",
      "Microsoft.DocumentDB/databaseAccounts/mongodbUserDefinitions/read",
      "Microsoft.Insights/Metrics/Read",
      "Microsoft.DocumentDB/databaseAccounts/gremlinDatabases/read",
      "Microsoft.DocumentDB/databaseAccounts/gremlinDatabases/graphs/read",
      "Microsoft.DocumentDB/databaseAccounts/sqlRoleAssignments/read",
      "Microsoft.DocumentDB/databaseAccounts/sqlRoleDefinitions/read",
      "Microsoft.DocumentDB/databaseAccountNames/read",
      "Microsoft.DocumentDB/cassandraClusters/read",
      "Microsoft.Insights/Logs/SQLQueryPerformance/Read",
      "Microsoft.DBforPostgreSQL/flexibleServers/queryStatistics/read",
      "Microsoft.DBforPostgreSQL/flexibleServers/providers/Microsoft.Insights/metricDefinitions/read",
      "Microsoft.DBforPostgreSQL/flexibleServers/advisors/read",
      "Microsoft.DBforPostgreSQL/flexibleServers/advisors/recommendedActions/read",
      "Microsoft.DBforPostgreSQL/flexibleServers/queryTexts/read",
      "Microsoft.DBforPostgreSQL/flexibleServers/topQueryStatistics/read",
      "Microsoft.DBforPostgreSQL/flexibleServers/providers/Microsoft.Insights/logDefinitions/read",
      "Microsoft.DBforPostgreSQL/servers/providers/Microsoft.Insights/diagnosticSettings/read",
      "Microsoft.DBforPostgreSQL/servers/providers/Microsoft.Insights/metricDefinitions/read",
      "Microsoft.DBforPostgreSQL/servers/queryTexts/read",
      "Microsoft.Sql/servers/databases/topQueries/queryText/action",
      "Microsoft.DBforPostgreSQL/locations/performanceTiers/read",
      "Microsoft.DBforPostgreSQL/locations/administratorAzureAsyncOperation/read",
      "Microsoft.DBforPostgreSQL/locations/privateEndpointConnectionProxyAzureAsyncOperation/read",
      "Microsoft.DBforPostgreSQL/serverGroupsv2/privateEndpointConnections/read",
      "Microsoft.DBforPostgreSQL/serverGroupsv2/privateEndpointConnectionProxies/read",
      "Microsoft.DBforPostgreSQL/serverGroupsv2/privateLinkResources/read",
      "Microsoft.DBforPostgreSQL/locations/privateEndpointConnectionAzureAsyncOperation/read",
      "Microsoft.DBforPostgreSQL/locations/privateEndpointConnectionOperationResults/read",
      "Microsoft.DBforPostgreSQL/locations/serverKeyAzureAsyncOperation/read",
      "Microsoft.DBforPostgreSQL/locations/serverKeyOperationResults/read",
      "Microsoft.DBforPostgreSQL/locations/capabilities/read",
      "Microsoft.DBforPostgreSQL/performanceTiers/read",
      "Microsoft.DBforPostgreSQL/locations/operationResults/read",
      "Microsoft.DBforPostgreSQL/operations/read",
      "Microsoft.DBforPostgreSQL/flexibleServers/providers/Microsoft.Insights/diagnosticSettings/read",
      "Microsoft.DBforPostgreSQL/flexibleServers/migrations/read",
      "Microsoft.DBforPostgreSQL/servers/administrators/read",
      "Microsoft.DBforPostgreSQL/servers/advisors/read",
      "Microsoft.DBforPostgreSQL/servers/advisors/recommendedActions/read",
      "Microsoft.DBforPostgreSQL/servers/privateEndpointConnectionProxies/read",
      "Microsoft.DBforPostgreSQL/servers/keys/read",
      "Microsoft.DBforPostgreSQL/servers/privateEndpointConnections/read",
      "Microsoft.DBforPostgreSQL/servers/privateLinkResources/read",
      "Microsoft.DBforPostgreSQL/servers/configurations/read",
      "Microsoft.DBforPostgreSQL/servers/performanceTiers/read",
      "Microsoft.DBforPostgreSQL/servers/databases/read",
      "Microsoft.DBforPostgreSQL/servers/logFiles/read",
      "Microsoft.DBforPostgreSQL/servers/replicas/read",
      "Microsoft.DBforPostgreSQL/servers/recoverableServers/read",
      "Microsoft.DBforPostgreSQL/servers/securityAlertPolicies/read",
      "Microsoft.DBforPostgreSQL/servers/providers/Microsoft.Insights/logDefinitions/read",
      "Microsoft.DBforPostgreSQL/servers/topQueryStatistics/read",
      "Microsoft.DBforPostgreSQL/servers/waitStatistics/read",
      "Microsoft.DBforPostgreSQL/serversv2/providers/Microsoft.Insights/diagnosticSettings/read",
      "Microsoft.DBforPostgreSQL/serversv2/providers/Microsoft.Insights/metricDefinitions/read",
      "Microsoft.DBforPostgreSQL/serversv2/providers/Microsoft.Insights/logDefinitions/read",
      "Microsoft.DBforPostgreSQL/locations/azureAsyncOperation/read",
      "Microsoft.DBforPostgreSQL/locations/administratorOperationResults/read",
      "Microsoft.DBforPostgreSQL/locations/securityAlertPoliciesAzureAsyncOperation/read",
      "Microsoft.DBforPostgreSQL/locations/securityAlertPoliciesOperationResults/read"
    ]
    not_actions      = []
    data_actions     = []
    not_data_actions = []
  }

  assignable_scopes = [local.tenant_root_group_id]
}

resource "azurerm_role_definition" "autobots_cosmos_listkeys" {
  name        = "Autobots Cosmos DB"
  scope       = local.tenant_root_group_id
  description = "This is a custom role created via Terraform. This role provides permissions needed on the subscription level to read cosmos db keys."

  permissions {
    actions = [
      "Microsoft.DocumentDB/databaseAccounts/listKeys/action"
    ]
    not_actions      = []
    data_actions     = []
    not_data_actions = []
  }

  assignable_scopes = [local.tenant_root_group_id]
}

resource "azurerm_role_definition" "redis_key_reader" {
  name        = "Redis Key Reader"
  scope       = local.tenant_root_group_id
  description = "This is a custom role created via Terraform. This role provides permissions needed to read redis access keys."

  permissions {
    actions = [
      "Microsoft.Cache/redis/listKeys/action",
      "Microsoft.Cache/redisEnterprise/databases/listKeys/action"
    ]
    not_actions      = []
    data_actions     = []
    not_data_actions = []
  }

  assignable_scopes = [local.tenant_root_group_id]
}

resource "azurerm_role_definition" "open_cost_role" {
  name        = "Open Cost Role"
  scope       = local.tenant_root_group_id
  description = "Rate Card query role."

  permissions {
    actions = [
      "Microsoft.Compute/virtualMachines/vmSizes/read",
      "Microsoft.Resources/subscriptions/locations/read",
      "Microsoft.Resources/providers/read",
      "Microsoft.ContainerService/containerServices/read",
      "Microsoft.Commerce/RateCard/read"
    ]
    not_actions      = []
    data_actions     = []
    not_data_actions = []
  }

  assignable_scopes = [local.tenant_root_group_id]
}

resource "azurerm_role_definition" "assign_mi_role" {
  name        = "Assign User MI Role"
  scope       = local.tenant_root_group_id
  description = "Allow assignemnt of User MIs to resources."

  permissions {
    actions = [
      "Microsoft.ManagedIdentity/userAssignedIdentities/assign/action"
    ]
  }
  assignable_scopes = [local.tenant_root_group_id]
}

resource "azurerm_role_definition" "ce_custom_role" {
  name        = "Cloud Engineering Custom Role"
  scope       = local.tenant_root_group_id
  description = "A custom role for Cloud Engineering"

  permissions {
    actions = [
      "Microsoft.AppConfiguration/configurationStores/listKeys/action",
      "Microsoft.Cache/redis/listKeys/action",
      "Microsoft.ContainerService/managedClusters/listClusterAdminCredential/action",
      "Microsoft.ContainerService/managedClusters/listClusterUserCredential/action",
      "Microsoft.Maps/accounts/listKeys/action",
      "Microsoft.Storage/storageAccounts/listKeys/action",
      "Microsoft.Web/sites/config/list/action"
    ]
  }
  assignable_scopes = [local.tenant_root_group_id]
}

resource "azurerm_role_definition" "everest_custom_role" {
  name        = "Everest Custom Role"
  scope       = local.tenant_root_group_id
  description = "A custom role for Everest"

  permissions {
    actions = [
      "Microsoft.Authorization/locks/*",
    ]
  }
  assignable_scopes = [local.tenant_root_group_id]
}

resource "azurerm_role_definition" "de_contributor" {
  name        = "Data Engineering Contributor"
  scope       = local.tenant_root_group_id
  description = "A custom Contributor role for Data Engineering"

  permissions {
    actions = [
      "*",
    ]
    not_actions = toset(concat(
      data.azurerm_role_definition.contributor.permissions[0].not_actions,
      [
        "Microsoft.DBforPostgreSQL/flexibleServers/firewallRules/*",
        "Microsoft.DocumentDB/mongoClusters/firewallRules/*",
        "Microsoft.Sql/servers/firewallRules/*",
        "Microsoft.Sql/servers/ipv6FirewallRules/*",
        "Microsoft.Sql/servers/outboundFirewallRules/*",
      ]
    ))
  }
  assignable_scopes = [local.tenant_root_group_id]
}

resource "azurerm_role_definition" "de_reader" {
  name        = "Data Engineering Reader"
  scope       = local.tenant_root_group_id
  description = "A custom Reader role for Data Engineering"

  permissions {
    actions = [
      "Microsoft.DocumentDB/databaseAccounts/listKeys/action",
    ]
  }
  assignable_scopes = [local.tenant_root_group_id]
}

resource "azurerm_role_definition" "cost_mgmt_export_role" {
  name        = "Cost Management Export Role"
  scope       = local.tenant_root_group_id
  description = "This is a custom role created via Terraform. This role provides permissions needed on the subscription level to grant cost management export create or update commands to be ran."

  permissions {
    actions = [
      "Microsoft.CostManagement/exports/action",
      "Microsoft.CostManagement/exports/write",
      "Microsoft.CostManagement/exports/read",
      "Microsoft.CostManagement/exports/run/action"
    ]
    not_actions      = []
    data_actions     = []
    not_data_actions = []
  }

  assignable_scopes = [local.tenant_root_group_id]
}
