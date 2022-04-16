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
| [tfe_workspace.workspace](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_agent_pool"></a> [agent\_pool](#input\_agent\_pool) | The ID of an agent pool to assign to the workspace. Requires execution\_mode to be set to agent. This value must not be provided if execution\_mode is set to any other value or if operations is provided. | `string` | `""` | no |
| <a name="input_allow_destroy_plan"></a> [allow\_destroy\_plan](#input\_allow\_destroy\_plan) | Whether destroy plans can be queued on the workspace. | `bool` | `true` | no |
| <a name="input_auto_apply"></a> [auto\_apply](#input\_auto\_apply) | Automatically apply changes when a Terraform plan is successful. Plans that have no changes will not be applied. If this workspace is linked to version control, a push to the default branch of the linked repository will trigger a plan and apply. | `bool` | `false` | no |
| <a name="input_branch"></a> [branch](#input\_branch) | The repository branch that Terraform will execute from. Default to master. | `string` | `"master"` | no |
| <a name="input_description"></a> [description](#input\_description) | A description for the workspace. | `string` | `""` | no |
| <a name="input_execution_mode"></a> [execution\_mode](#input\_execution\_mode) | Which execution mode to use. Using Terraform Cloud, valid values are remote, local or agent. Using Terraform Enterprise, only remote and local execution modes are valid. When set to local, the workspace will be used for state storage only. Defaults to remote. This value must not be provided if operations is provided. | `string` | `"remote"` | no |
| <a name="input_file_triggers_enabled"></a> [file\_triggers\_enabled](#input\_file\_triggers\_enabled) | Whether to filter runs based on the changed files in a VCS push. If enabled, the working directory and trigger prefixes describe a set of paths which must contain changes for a VCS push to trigger a run. If disabled, any push will trigger a run. Defaults to true. | `bool` | `true` | no |
| <a name="input_global_remote_state"></a> [global\_remote\_state](#input\_global\_remote\_state) | Whether the workspace allows all workspaces in the organization to access its state data during runs. If false, then only specifically approved workspaces can access its state (remote\_state\_consumer\_ids). | `bool` | `false` | no |
| <a name="input_ingress_submodules"></a> [ingress\_submodules](#input\_ingress\_submodules) | Whether submodules should be fetched when cloning the VCS repository. Defaults to false. | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the workspace. | `string` | `"default"` | no |
| <a name="input_queue_all_runs"></a> [queue\_all\_runs](#input\_queue\_all\_runs) | n/a | `bool` | `false` | no |
| <a name="input_remote_state_consumer_ids"></a> [remote\_state\_consumer\_ids](#input\_remote\_state\_consumer\_ids) | The set of workspace IDs set as explicit remote state consumers for the given workspace. | `list(string)` | `[]` | no |
| <a name="input_speculative_enabled"></a> [speculative\_enabled](#input\_speculative\_enabled) | Whether this workspace allows speculative plans. Setting this to false prevents Terraform Cloud or the Terraform Enterprise instance from running plans on pull requests, which can improve security if the VCS repository is public or includes untrusted contributors. Defaults to true. | `bool` | `true` | no |
| <a name="input_ssh_key_id"></a> [ssh\_key\_id](#input\_ssh\_key\_id) | The ID of an SSH key to assign to the workspace. | `string` | `""` | no |
| <a name="input_structured_run_output_enabled"></a> [structured\_run\_output\_enabled](#input\_structured\_run\_output\_enabled) | Whether this workspace should show output from Terraform runs using the enhanced UI when available. Defaults to true. Setting this to false ensures that all runs in this workspace will display their output as text logs. | `bool` | `true` | no |
| <a name="input_tag_names"></a> [tag\_names](#input\_tag\_names) | A list of tag names for this workspace. Note that tags must only contain letters, numbers or colons. | `list(string)` | `[]` | no |
| <a name="input_terraform_version"></a> [terraform\_version](#input\_terraform\_version) | The version of Terraform to use for this workspace. Defaults to the latest available version. | `string` | `"1.1.8"` | no |
| <a name="input_tfc_oauth_token"></a> [tfc\_oauth\_token](#input\_tfc\_oauth\_token) | Terraform Cloud OAuth Token for VCS\_Repo Integration. | `string` | `""` | no |
| <a name="input_tfc_organization"></a> [tfc\_organization](#input\_tfc\_organization) | Terraform Cloud Organization Name. | `string` | n/a | yes |
| <a name="input_trigger_prefixes"></a> [trigger\_prefixes](#input\_trigger\_prefixes) | List of repository-root-relative paths which describe all locations to be tracked for changes. | `list(string)` | `[]` | no |
| <a name="input_vcs_repo"></a> [vcs\_repo](#input\_vcs\_repo) | A reference to your VCS repository in the format <organization>/<repository> where <organization> and <repository> refer to the organization and repository in your VCS provider. | `string` | `""` | no |
| <a name="input_working_directory"></a> [working\_directory](#input\_working\_directory) | A relative path that Terraform will execute within. Defaults to the root of your repository. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_workspace"></a> [workspace](#output\_workspace) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
