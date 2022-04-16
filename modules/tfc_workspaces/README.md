# Terraform Cloud - Workspace Module

## Usage

```hcl
module "tfc_workspaces" {

  source = "terraform-cisco-modules/tfe//modules/tfc_workspaces"

  # omitted...
}
```

This module will Create a Terraform Cloud Workspace.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_workspace.workspaces](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_oauth_token_id"></a> [oauth\_token\_id](#input\_oauth\_token\_id) | Terraform Cloud OAuth Token for VCS\_Repo Integration. | `string` | `""` | no |
| <a name="input_tfc_organization"></a> [tfc\_organization](#input\_tfc\_organization) | Terraform Cloud Organization Name. | `string` | `"default"` | no |
| <a name="input_workspaces"></a> [workspaces](#input\_workspaces) | * agent\_pool - (Optional) The Name of an agent pool to assign to the workspace. Requires execution\_mode to be set to agent. This value must not be provided if execution\_mode is set to any other value or if operations is provided.<br>* allow\_destroy\_plan - (Optional) Whether destroy plans can be queued on the workspace.<br>* auto\_apply - (Optional) Whether to automatically apply changes when a Terraform plan is successful. Defaults to false.<br>* description - (Optional) A description for the workspace.<br>* execution\_mode - (Optional) Which execution mode to use. Using Terraform Cloud, valid values are remote, local oragent. Defaults to remote. Using Terraform Enterprise, only remoteand local execution modes are valid. When set to local, the workspace will be used for state storage only. This value must not be provided if operations is provided.<br>* file\_triggers\_enabled - (Optional) Whether to filter runs based on the changed files in a VCS push. Defaults to true. If enabled, the working directory and trigger prefixes describe a set of paths which must contain changes for a VCS push to trigger a run. If disabled, any push will trigger a run.<br>* global\_remote\_state - (Optional) Whether the workspace allows all workspaces in the organization to access its state data during runs. If false, then only specifically approved workspaces can access its state (remote\_state\_consumer\_ids).<br>* remote\_state\_consumer\_ids - (Optional) The set of workspace IDs set as explicit remote state consumers for the given workspace.<br>* queue\_all\_runs - (Optional) Whether the workspace should start automatically performing runs immediately after its creation. Defaults to true. When set to false, runs triggered by a webhook (such as a commit in VCS) will not be queued until at least one run has been manually queued. Note: This default differs from the Terraform Cloud API default, which is false. The provider uses true as any workspace provisioned with false would need to then have a run manually queued out-of-band before accepting webhooks.<br>* speculative\_enabled - (Optional) Whether this workspace allows speculative plans. Defaults to true. Setting this to false prevents Terraform Cloud or the Terraform Enterprise instance from running plans on pull requests, which can improve security if the VCS repository is public or includes untrusted contributors.<br>* ssh\_key\_id - (Optional) The ID of an SSH key to assign to the workspace.<br>* structured\_run\_output\_enabled - (Optional) Whether this workspace should show output from Terraform runs using the enhanced UI when available. Defaults to true. Setting this to false ensures that all runs in this workspace will display their output as text logs.<br>* tag\_names - (Optional) A list of tag names for this workspace. Note that tags must only contain letters, numbers or colons.<br>* terraform\_version - (Optional) The version of Terraform to use for this workspace. This can be either an exact version or a version constraint (like ~> 1.0.0); if you specify a constraint, the workspace will always use the newest release that meets that constraint. Defaults to the latest available version.<br>* trigger\_prefixes - (Optional) List of repository-root-relative paths which describe all locations to be tracked for changes.<br>* working\_directory - (Optional) A relative path that Terraform will execute within. Defaults to the root of your repository.<br>* vcs\_repo - (Optional) Settings for the workspace's VCS repository, enabling the UI/VCS-driven run workflow. Omit this argument to utilize the CLI-driven and API-driven workflows, where runs are not driven by webhooks on your VCS provider.<br>* The vcs\_repo block supports:<br>  - branch - (Optional) The repository branch that Terraform will execute from. This defaults to the repository's default branch (e.g. main).<br>  - identifier - (Required) A reference to your VCS repository in the format <organization>/<repository> where <organization> and <repository> refer to the organization and repository in your VCS provider. The format for Azure DevOps is //\_git/.<br>  - ingress\_submodules - (Optional) Whether submodules should be fetched when cloning the VCS repository. Defaults to false. | <pre>map(object(<br>    {<br>      agent_pool                    = optional(string)<br>      allow_destroy_plan            = optional(bool)<br>      auto_apply                    = optional(bool)<br>      description                   = optional(string)<br>      execution_mode                = optional(string)<br>      file_triggers_enabled         = optional(bool)<br>      global_remote_state           = optional(bool)<br>      queue_all_runs                = optional(bool)<br>      remote_state_consumer_ids     = optional(list(string))<br>      speculative_enabled           = optional(bool)<br>      ssh_key_id                    = optional(string)<br>      structured_run_output_enabled = optional(bool)<br>      tag_names                     = optional(list(string))<br>      terraform_version             = optional(string)<br>      trigger_prefixes              = optional(list(string))<br>      working_directory             = optional(string)<br>      vcs_repo = optional(list(object(<br>        {<br>          branch             = optional(string)<br>          identifier         = string<br>          ingress_submodules = optional(bool)<br>        }<br>      )))<br>    }<br>  ))</pre> | <pre>{<br>  "default": {<br>    "agent_pool": "",<br>    "allow_destroy_plan": true,<br>    "auto_apply": false,<br>    "description": "",<br>    "execution_mode": "remote",<br>    "file_triggers_enabled": true,<br>    "global_remote_state": false,<br>    "queue_all_runs": false,<br>    "remote_state_consumer_ids": [],<br>    "speculative_enabled": true,<br>    "ssh_key_id": "",<br>    "structured_run_output_enabled": true,<br>    "tag_names": [],<br>    "terraform_version": "1.1.8",<br>    "trigger_prefixes": [],<br>    "vcs_repo": [<br>      {<br>        "branch": "",<br>        "identifier": "scotttyso/terraform-intersight-easy-iks",<br>        "ingress_submodules": false<br>      }<br>    ],<br>    "working_directory": ""<br>  }<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_tfe_workspace_id"></a> [tfe\_workspace\_id](#output\_tfe\_workspace\_id) | n/a |
| <a name="output_tfe_workspace_name"></a> [tfe\_workspace\_name](#output\_tfe\_workspace\_name) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
