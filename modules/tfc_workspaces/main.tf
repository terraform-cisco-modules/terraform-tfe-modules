resource "tfe_workspace" "workspace" {
  for_each                  = local.workspace_list
  auto_apply                = each.value["auto_apply"]
  agent_pool_id             = each.value["agent_pool"]
  description               = each.value["description"]
  execution_mode            = each.value["execution_mode"]
  global_remote_state       = each.value["global_remote_state"]
  name                      = each.value["name"]
  organization              = var.tfc_org_name
  queue_all_runs            = each.value["queue_all_runs"]
  remote_state_consumer_ids = each.value["remote_state_consumer_ids"]
  terraform_version         = each.value["terraform_version"]
  trigger_prefixes          = each.value["trigger_prefixes"]
  working_directory         = each.value["working_directory"]
  vcs_repo {
    identifier     = each.value["vcs_repo"]
    oauth_token_id = var.tfc_oath_token
  }
}
