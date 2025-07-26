locals {
  subscriptions = {
    "averitt" = {
      id               = "ave4u",
      management_group = "customer_subscriptions"
    },
    "pepsi" = {
      id               = "pep5c",
      management_group = "customer_subscriptions"
    },
    "Azure SaaS & Licenses" = {
      id               = "azuresaaslicenses",
      management_group = "mastery_subscriptions"
    },
    "bison" = {
      id               = "bi50n",
      management_group = "customer_subscriptions"
    },
    "cargill" = {
      id               = "cgl60",
      management_group = "customer_subscriptions"
    },
    "cat" = {
      id               = "cat7x",
      management_group = "customer_subscriptions"
    },
    "chs" = {
      id               = "chs9l",
      management_group = "customer_subscriptions"
    },
    "covenant" = {
      id               = "co2yt",
      management_group = "customer_subscriptions"
    },
    "cxtestremoval" = {
      id               = "cxt94",
      management_group = "mastery_spoke_subscriptions"
    },
    "dollargeneral" = {
      id               = "dg3nl",
      management_group = "customer_subscriptions"
    }
    "evans" = {
      id               = "eva9o",
      management_group = "customer_subscriptions"
    },
    "hirschbach" = {
      id               = "hir3j",
      management_group = "customer_subscriptions"
    },
    "kdp" = {
      id               = "kdp5t",
      management_group = "customer_subscriptions"
    },
    "masteryglobalhub" = {
      id               = "mglob",
      management_group = "mastery_global_hub_subscriptions"
    },
    "masteryhubsandbox" = {
      id               = "mhs01",
      management_group = "mastery_spoke_subscriptions"
    },
    "masteryhubdev" = {
      id               = "mhd01",
      management_group = "mastery_spoke_subscriptions"
    },
    "masteryhubtest" = {
      id               = "mht01"
      management_group = "mastery_spoke_subscriptions"
    },
    "masteryhubuatcentral" = {
      id               = "mhuc1"
      management_group = "mastery_spoke_subscriptions"
    },
    "masteryhubuateast2" = {
      id               = "mhue2"
      management_group = "mastery_spoke_subscriptions"
    },
    "masteryhubprod" = {
      id               = "mhp01"
      management_group = "mastery_spoke_subscriptions"
    },
    "masteryinfinitytrain" = {
      id               = "itgxe",
      management_group = "mastery_spoke_subscriptions"
    },
    "masteryinternal" = {
      id               = "mm100",
      management_group = "mastery_spoke_subscriptions"
    },
    "masteryinternaltest" = {
      id               = "mit01",
      management_group = "mastery_spoke_subscriptions"
    },
    "masteryoperations" = {
      id               = "moy23",
      management_group = "mastery_hub_subscriptions"
    },
    "masteryopsdev" = {
      id               = "mohd1",
      management_group = "mastery_ops_hub_subscriptions"
    },
    "masteryopsprodcentral" = {
      id               = "mohpc",
      management_group = "mastery_ops_hub_subscriptions"
    },
    "masteryopsprodeast2" = {
      id               = "mohpe",
      management_group = "mastery_ops_hub_subscriptions"
    },
    "masteryopssandbox" = {
      id               = "mohs1",
      management_group = "mastery_ops_hub_subscriptions"
    },
    "masterysandbox" = {
      id               = "msb82",
      management_group = "mastery_subscriptions"
    },
    "masterydemo" = {
      id               = "mdem0",
      management_group = "mastery_spoke_subscriptions"
    },
    "masterytooling" = {
      id               = "mto9q",
      management_group = "mastery_hub_subscriptions"
    },
    "molo" = {
      id               = "ml100",
      management_group = "customer_subscriptions"
    },
    "multimodalgroup" = {
      id               = "usmmg",
      management_group = "customer_subscriptions"
    },
    "prime" = {
      id               = "pr100",
      management_group = "customer_subscriptions"
    },
    "ruan" = {
      id               = "ru100",
      management_group = "customer_subscriptions"
    },
    "schneider" = {
      id               = "sn100",
      management_group = "customer_subscriptions"
    },
    "trailerbridge" = {
      id               = "tb100",
      management_group = "customer_subscriptions"
    },
    "werner" = {
      id               = "we100",
      management_group = "customer_subscriptions"
    }
  }

  billing_account_id = "b2324050-6d24-51e5-a49c-560e1c380f7f:066243a2-8bee-4ba1-9e43-07a4784f3d12_2019-05-31"
  billing_profile_id = "GTWY-PQS2-BG7-PGB"
  invoice_section_id = "QJWL-CET6-PJA-PGB"

  azure_management_groups = {
    "customer_subscriptions" = {
      display_name = "Customer Subscriptions"
      parent_id    = local.tenant_root_group_id
    }
    "legacy_customer_subscriptions" = {
      display_name = "Legacy Customer Subscriptions"
      parent_id    = local.tenant_root_group_id
    }
    "legacy_mastery_subscriptions" = {
      display_name = "Legacy Mastery Subscriptions"
      parent_id    = local.tenant_root_group_id
    }
    "mastery_global_hub_subscriptions" = {
      display_name = "Mastery Global Hub Subscriptions"
      parent_id    = local.mastery_subscriptions_id
    }
    "mastery_hub_subscriptions" = {
      display_name = "Mastery Hub Subscriptions"
      parent_id    = local.mastery_subscriptions_id
    }
    "mastery_ops_hub_subscriptions" = {
      display_name = "Mastery Ops Hub Subscriptions"
      parent_id    = local.mastery_subscriptions_id
    }
    "mastery_spoke_subscriptions" = {
      display_name = "Mastery Spoke Subscriptions"
      parent_id    = local.mastery_subscriptions_id
    }
    "mastery_subscriptions" = {
      display_name = "Mastery Subscriptions"
      parent_id    = local.tenant_root_group_id
    }
  }

  tenant_root_group_id     = "/providers/Microsoft.Management/managementGroups/0af189f7-f265-4414-bbd5-35402c9d67c1"
  mastery_subscriptions_id = "/providers/Microsoft.Management/managementGroups/mastery_subscriptions"

  mi_artifactory_cleanup                                        = "cf86e190-8e10-4eb4-9297-53b98c68abe5"
  mi_artifactory_cleanup_tooling                                = "ba61c56c-5eaf-4f53-b8d3-52222e68b7fb"
  mi_jfrog_reporting_mohs1_dev                                  = "8a05f013-52c8-47a8-97a0-840f6b8a7243"
  mi_jfrog_reporting_mglob_prod                                 = "94b526d4-6728-4833-869c-c99d1cd68dba"
  mi_autobots_reporting                                         = "279f85a0-56f7-4b9b-9095-adaafc7705b4"
  mi_autobots_reporting_tooling                                 = "5e5e44a3-0393-4284-b426-633afef8cb05"
  mi_github_actions_cloud_engineering_custom_code               = "a7b89415-aa6b-457a-aec3-d41959d73d1c"
  mi_github_actions_cloud_infra                                 = "b8953663-f8da-41f8-9119-2dad6b95361f"
  mi_github_actions_cloud_monitoring                            = "37793fe6-2205-413f-88f4-cd2467311c9b"
  mi_github_actions_mastermind_release                          = "c0e352e4-662f-4188-9b23-4bd39747c60f"
  mi_github_actions_mastery_data_engineering_deployment         = "ab4d5604-d760-45df-a396-ab370cfa9b03"
  mi_github_actions_mastery_vmss                                = "9825f281-4469-4b20-9c2c-c99cf8d2723b"
  mi_github_actions_terraform_mastery_confluentcloud            = "17244019-5d40-4bc8-ae8c-a1566352dc67"
  mi_github_actions_terraform_mastery_resource_group_management = "33591a4f-db51-4987-8d0b-f592b24f7e59"
  mi_grafana_mglob_prod                                         = "44d70519-6b52-4c54-8073-d64814fc0c4f"
  mi_maintenance_alerts                                         = "47375d78-566a-4db9-8211-041ca818b562"
  mi_masterycost_mohd1_dev                                      = "8476af66-b24a-4228-9c60-1f09c999bcd0"
  mi_masterycost_mohpc_prod                                     = "da50ac50-0881-4ca9-8c25-75cdae121276"
  mi_masterycost_mohpe_prod                                     = "8f083a6f-b3e5-4368-9f78-9ae4af62ea13"
  mi_masterycost_mohs1_dev                                      = "2089308a-ef6d-4600-8bd6-8cb2db62b2e0"
  mi_snowman_custom_code                                        = "c86a7e5d-9e72-42f8-b635-86ba371728cd"

  pim_cost_management_reader = "e30d7fdd-abca-411e-a149-f640d3c5ec87"
  pim_reservation_purchaser  = "7c263082-f516-44e8-99b6-3f89cfbebe77"
  pim_savings_plan_purchaser = "b66070fc-61d8-40a9-9e2d-789c9518350b"
  pim_team_everest           = "095abed5-f235-4aef-9c87-2c7091eb2986"
  pim_team_stratus           = "7bbcd262-a0fa-4f51-9eb7-14af4d32d907"
  pim_team_platform_support  = "54ac15d4-bea2-47bd-87f5-e2695230061d"
  pim_team_cloud_engineering = "ea52c95b-dcd2-47d1-925f-ef5d8cb4328b"

  sg_cost_management_reader               = "0950621b-8187-47b4-8751-10164765a8d3"
  sg_github_mi_global_hub_akv_contributor = "f0395cd1-2634-4324-9a9c-c36cd7e72134"
  sg_github_mi_global_hub_akv_reader      = "cd160773-c415-4a2b-8489-fee613cfa547"
  sg_github_mi_ops_hub_akv_contributor    = "5111b1de-3928-4e1f-b7cf-27a2daa01dbe"
  sg_github_mi_ops_hub_akv_reader         = "ff067544-227e-4725-bc89-6c32bd59f86b"
  sg_github_mi_spoke_akv_contributor      = "3d35c9a2-c5a6-42c0-9230-00e95e7bf5ad"
  sg_github_mi_spoke_akv_reader           = "a5112404-de96-4163-8f98-f0ca561886a8"
  sg_github_mi_sub_reader                 = "202552eb-88eb-4332-8ba0-5b3fa1c3dd44"
  sg_global_hub_k8s_user_access           = "40a5ba60-50e3-48a7-b359-97a1ec4183ab"
  sg_hub_k8s_user_access                  = "d47155cf-b119-47eb-93c6-425d04597a6c"
  sg_ops_hub_k8s_user_access              = "b7bc2f45-daa3-4bf2-929f-9174435caef7"
  sg_security_operations                  = "bae28871-adfc-40b9-bec5-6ee387c1a620"
  sg_spoke_k8s_user_access                = "ba09af4e-27e7-453f-8a61-a061b5d204cd"
  sg_team_cloud_engineering               = "179554c1-ce09-481a-9961-07c22cccbfd7"
  sg_team_cloud_engineering_leads         = "a65bfbe0-1f36-4d95-904c-804ad71a5c68"
  sg_team_cloud_engineering_ro            = "f64fa575-4ffe-4ea3-a300-5e6676bac644"
  sg_team_cosmos                          = "f60c5843-6be1-4163-af57-9284d5fb379c"
  sg_team_everest                         = "de6f2adc-3d11-4e58-9efa-1e2503b12324"
  sg_team_grc                             = "1d5bf513-8751-4cb4-9677-95314fe0df1e"
  sg_team_monkey_wrench                   = "53640a92-0b2d-418d-8a85-c24cdce08a02"
  sg_team_platform_support                = "e66fa487-f213-4931-ad55-131ead7e5a9d"
  sg_team_ragnar                          = "8bb259a8-0f01-4ed2-a917-957f26c374bc"
  sg_team_snowman                         = "9762d2ea-6581-4b53-956c-dfc5cff9a2c3"
  sg_team_watchtower                      = "f4766b9e-b93f-4468-98b4-97c20581280b"
  sg_cost_management_contributor          = "0ca855dd-9991-4f12-9f6a-dd5a4202e56f"
  sg_subscription_reader                  = "13073428-dbdc-4b96-99da-189cef54caee"
  sg_support_request_contributor          = "32c096a0-cb40-4a8c-a46e-c415dcc36cb4"

  sp_az_automation                = "135c2d64-685e-451f-8eae-48260a111e4a"
  sp_de_dryrun                    = "7a6556b2-c367-490b-a950-7989d7f50c50"
  sp_masterycost_api              = "9b0a3f4c-482e-419e-b3b9-12e521bf71f0"
  sp_mastery_global_opencost      = "f43b328e-3589-438b-a195-c24bf46cedd0"
  sp_mastery_global_coeus_invoice = "16f0f24e-1437-44cf-9e37-f9a036cbcee6"

}
