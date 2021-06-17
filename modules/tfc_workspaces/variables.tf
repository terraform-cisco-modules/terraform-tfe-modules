terraform {
  experiments = [module_variable_optional_attrs]
}

variable "tfc_oath_token" {
  description = "Terraform Cloud OAuth Token for VCS_Repo Integration."
  type        = string
  sensitive   = true
}

variable "tfc_org_name" {
  description = "Terraform Cloud Organization Name."
  type        = string
}

variable "workspace_list" {
  description = "Workspaces (containing agent_pool, description, exec_mode, name, vcs_repo, working_dir)."
  type = map(object({
    auto_apply                = optional(bool)
    agent_pool                = optional(string)
    description               = optional(string)
    execution_mode            = optional(string)
    global_remote_state       = optional(bool)
    name                      = string
    queue_all_runs            = optional(bool)
    remote_state_consumer_ids = optional(list(string))
    terraform_version         = optional(string)
    trigger_prefixes          = optional(list(string))
    working_directory         = optional(string)
    vcs_repo                  = optional(string)
  }))
  default = {
    default = {
      auto_apply                = false
      agent_pool                = ""
      description               = ""
      execution_mode            = "remote"
      global_remote_state       = false
      name                      = ""
      queue_all_runs            = false
      remote_state_consumer_ids = []
      terraform_version         = "1.0.0"
      trigger_prefixes          = []
      working_directory         = ""
      vcs_repo                  = ""
    }
  }
}

locals {

  workspace_list = {
    for k, v in var.workspace_list : k => {
      auto_apply                = coalesce(v.auto_apply, false)
      agent_pool                = (v.agent_pool != null ? v.agent_pool : "")
      description               = (v.description != null ? v.description : "")
      execution_mode            = coalesce(v.execution_mode, "remote")
      global_remote_state       = coalesce(v.global_remote_state, false)
      name                      = (v.name != null ? v.name : "")
      queue_all_runs            = coalesce(v.queue_all_runs, false)
      remote_state_consumer_ids = (v.remote_state_consumer_ids != null ? v.remote_state_consumer_ids : [])
      terraform_version         = coalesce(v.terraform_version, "1.0.0")
      trigger_prefixes          = (v.trigger_prefixes != null ? v.trigger_prefixes : [])
      working_directory         = (v.working_directory != null ? v.working_directory : "")
      vcs_repo                  = (v.vcs_repo != null ? v.vcs_repo : "")
    }
  }
}
