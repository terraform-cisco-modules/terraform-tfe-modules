resource "tfe_workspace" "workspaces" {
  for_each                      = local.workspaces
  agent_pool_id                 = each.value.agent_pool
  allow_destroy_plan            = each.value.allow_destroy_plan
  auto_apply                    = each.value.auto_apply
  description                   = each.value.description
  execution_mode                = each.value.execution_mode
  file_triggers_enabled         = each.value.file_triggers_enabled
  global_remote_state           = each.value.global_remote_state
  name                          = each.key
  organization                  = var.tfc_organization
  queue_all_runs                = each.value.queue_all_runs
  remote_state_consumer_ids     = each.value.remote_state_consumer_ids
  speculative_enabled           = each.value.speculative_enabled
  structured_run_output_enabled = each.value.structured_run_output_enabled
  terraform_version             = each.value.terraform_version
  trigger_prefixes              = each.value.trigger_prefixes
  working_directory             = each.value.working_directory
  dynamic "vcs_repo" {
    for_each = each.value.vcs_repo
    content {
      branch             = vcs_repo.value.branch
      identifier         = vcs_repo.value.identifier
      ingress_submodules = vcs_repo.value.ingress_submodules
      oauth_token_id     = var.oauth_token_id
    }
  }
}
