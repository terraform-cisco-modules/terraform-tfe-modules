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
| <a name="input_tfc_oath_token"></a> [tfc\_oath\_token](#input\_tfc\_oath\_token) | Terraform Cloud OAuth Token for VCS\_Repo Integration. | `string` | n/a | yes |
| <a name="input_tfc_org_name"></a> [tfc\_org\_name](#input\_tfc\_org\_name) | Terraform Cloud Organization Name. | `string` | n/a | yes |
| <a name="input_workspace_list"></a> [workspace\_list](#input\_workspace\_list) | Workspaces (containing agent\_pool, description, exec\_mode, name, vcs\_repo, working\_dir). | <pre>map(object({<br>    auto_apply                = optional(bool)<br>    agent_pool                = optional(string)<br>    description               = optional(string)<br>    execution_mode            = optional(string)<br>    global_remote_state       = optional(bool)<br>    name                      = string<br>    queue_all_runs            = optional(bool)<br>    remote_state_consumer_ids = optional(list(string))<br>    terraform_version         = optional(string)<br>    trigger_prefixes          = optional(list(string))<br>    working_directory         = optional(string)<br>    vcs_repo                  = optional(string)<br>  }))</pre> | <pre>{<br>  "default": {<br>    "agent_pool": "",<br>    "auto_apply": false,<br>    "description": "",<br>    "execution_mode": "remote",<br>    "global_remote_state": false,<br>    "name": "",<br>    "queue_all_runs": false,<br>    "remote_state_consumer_ids": [],<br>    "terraform_version": "1.0.0",<br>    "trigger_prefixes": [],<br>    "vcs_repo": "",<br>    "working_directory": ""<br>  }<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_tfe_workspace_id"></a> [tfe\_workspace\_id](#output\_tfe\_workspace\_id) | n/a |
| <a name="output_tfe_workspace_name"></a> [tfe\_workspace\_name](#output\_tfe\_workspace\_name) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
