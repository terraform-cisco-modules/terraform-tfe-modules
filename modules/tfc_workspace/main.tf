resource "tfe_workspace" "workspace" {
  agent_pool_id                 = var.agent_pool
  allow_destroy_plan            = var.allow_destroy_plan
  auto_apply                    = var.auto_apply
  description                   = var.description
  execution_mode                = var.execution_mode
  file_triggers_enabled         = var.file_triggers_enabled
  global_remote_state           = var.global_remote_state
  name                          = var.name
  organization                  = var.tfc_organization
  queue_all_runs                = var.queue_all_runs
  remote_state_consumer_ids     = var.remote_state_consumer_ids
  speculative_enabled           = var.speculative_enabled
  ssh_key_id                    = var.ssh_key_id
  structured_run_output_enabled = var.structured_run_output_enabled
  tag_names                     = var.tag_names
  terraform_version             = var.terraform_version
  trigger_prefixes              = var.trigger_prefixes
  working_directory             = var.working_directory
  vcs_repo {
    branch             = var.vcs_repo != "" ? var.branch : ""
    identifier         = var.vcs_repo
    ingress_submodules = var.vcs_repo != null ? var.ingress_submodules : false
    oauth_token_id     = var.vcs_repo != "" ? var.tfc_oauth_token : ""
  }
}
