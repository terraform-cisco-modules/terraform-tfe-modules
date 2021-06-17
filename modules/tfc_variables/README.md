# Terraform Cloud - Variables Module

## Usage

```hcl
module "tfc_variables" {

  source = "terraform-cisco-modules/tfe//modules/tfc_variables"

  # omitted...
}
```

This module will create Variables in a Terraform Cloud Workspace.

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
| [tfe_variable.variable](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_category"></a> [category](#input\_category) | Whether this is a Terraform or environment variable. | `string` | n/a | yes |
| <a name="input_variable_list"></a> [variable\_list](#input\_variable\_list) | Variable List (containing category, description, key, sensitive, value, workspace\_id). | `list(map(string))` | n/a | yes |
| <a name="input_workspace_id"></a> [workspace\_id](#input\_workspace\_id) | Terraform Workspace to assign the variables. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_tfe_variable_id"></a> [tfe\_variable\_id](#output\_tfe\_variable\_id) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
