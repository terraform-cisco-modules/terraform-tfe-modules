variable "agent_pool" {
  default     = ""
  description = "The ID of an agent pool to assign to the workspace. Requires execution_mode to be set to agent. This value must not be provided if execution_mode is set to any other value or if operations is provided."
  type        = string
}

variable "auto_apply" {
  default     = false
  description = "Automatically apply changes when a Terraform plan is successful. Plans that have no changes will not be applied. If this workspace is linked to version control, a push to the default branch of the linked repository will trigger a plan and apply."
  type        = bool
}

variable "allow_destroy_plan" {
  default     = true
  description = "Whether destroy plans can be queued on the workspace."
  type        = bool
}

variable "branch" {
  default     = "master"
  description = "The repository branch that Terraform will execute from. Default to master."
  type        = string
}

variable "description" {
  default     = ""
  description = "A description for the workspace."
  type        = string
}

variable "execution_mode" {
  default     = "remote"
  description = "Which execution mode to use. Using Terraform Cloud, valid values are remote, local or agent. Using Terraform Enterprise, only remote and local execution modes are valid. When set to local, the workspace will be used for state storage only. Defaults to remote. This value must not be provided if operations is provided."
  type        = string
}

variable "file_triggers_enabled" {
  default     = true
  description = "Whether to filter runs based on the changed files in a VCS push. If enabled, the working directory and trigger prefixes describe a set of paths which must contain changes for a VCS push to trigger a run. If disabled, any push will trigger a run. Defaults to true."
  type        = bool
}

variable "global_remote_state" {
  default     = false
  description = "Whether the workspace allows all workspaces in the organization to access its state data during runs. If false, then only specifically approved workspaces can access its state (remote_state_consumer_ids)."
  type        = bool
}

variable "ingress_submodules" {
  default     = false
  description = "Whether submodules should be fetched when cloning the VCS repository. Defaults to false."
  type        = bool
}

variable "name" {
  description = "Name for the workspace."
  type        = string
}

variable "queue_all_runs" {
  default     = false
  description = ""
  type        = bool
}

variable "remote_state_consumer_ids" {
  default     = []
  description = "The set of workspace IDs set as explicit remote state consumers for the given workspace."
  type        = list(string)
}

variable "speculative_enabled" {
  default     = true
  description = "Whether this workspace allows speculative plans. Setting this to false prevents Terraform Cloud or the Terraform Enterprise instance from running plans on pull requests, which can improve security if the VCS repository is public or includes untrusted contributors. Defaults to true."
  type        = bool
}

variable "ssh_key_id" {
  default     = ""
  description = "The ID of an SSH key to assign to the workspace."
  type        = string
}

variable "terraform_version" {
  default     = "1.0.0"
  description = "The version of Terraform to use for this workspace. Defaults to the latest available version."
  type        = string
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

variable "trigger_prefixes" {
  default     = []
  description = "List of repository-root-relative paths which describe all locations to be tracked for changes."
  type        = list(string)
}

variable "working_directory" {
  default     = ""
  description = "A relative path that Terraform will execute within. Defaults to the root of your repository."
  type        = string
}

variable "vcs_repo" {
  default     = ""
  description = "A reference to your VCS repository in the format <organization>/<repository> where <organization> and <repository> refer to the organization and repository in your VCS provider."
  type        = string
}
