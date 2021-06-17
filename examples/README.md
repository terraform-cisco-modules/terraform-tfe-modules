# Terraform Cloud - Workspace Module

## Usage

```hcl
module "tfc_agent_pool" {

  source = "terraform-cisco-modules/tfe//modules/tfc_agent_pool"

  # omitted...
}

module "tfc_workspaces" {

  source = "terraform-cisco-modules/tfe//modules/tfc_workspaces"

  # omitted...
}

module "tfc_variables" {

  source = "terraform-cisco-modules/tfe//modules/tfc_variables"

  # omitted...
}
```

This folder shows an example of consuming the three modules.  tfc_agent_pool is only needed if integrating a workspace with an agent for deployment.

The module tfc_agent_pool will consume a pre-existing agent_pool that has already been created in Terraform Cloud.

The module example for tfc_workspaces is creating 5 workspaces

* {cluster_name}_app_hello
* {cluster_name}_global_vars
* {cluster_name}_iks
* {cluster_name}_iwo
* {cluster_name}_kube

Two of the workspaces (app_hello|iwo) utilize agents for deployment and the rest are remote.  Note that there are optional inputs that these are not consuming.  Refer to the tfc_workspaces module to see all options.

Lastly, the example is consuming the tfc_variables.  The example includes the variables for the {cluster_name}_global_vars.  This shows enough examples to help with the idea of how to consume.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | >=0.25.3 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_tfc_agent_pool"></a> [tfc\_agent\_pool](#module\_tfc\_agent\_pool) | terraform-cisco-modules/tfe//modules/tfc_agent_pools | n/a |
| <a name="module_tfc_variables_global"></a> [tfc\_variables\_global](#module\_tfc\_variables\_global) | terraform-cisco-modules/tfe//modules/tfc_variables | n/a |
| <a name="module_tfc_workspaces"></a> [tfc\_workspaces](#module\_tfc\_workspaces) | terraform-cisco-modules/tfe//modules/tfc_workspaces | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_addons_list"></a> [addons\_list](#input\_addons\_list) | List of Add-ons to be added to Cluster. | `string` | `"[]"` | no |
| <a name="input_agent_pool"></a> [agent\_pool](#input\_agent\_pool) | Terraform Cloud Agent Pool | `string` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Intersight Kubernetes Service Cluster Name. | `string` | `"iks"` | no |
| <a name="input_dns_servers"></a> [dns\_servers](#input\_dns\_servers) | Primary DNS Server for Kubernetes Sysconfig Policy. | `string` | `"[\"10.200.0.100\"]"` | no |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | Domain Name for Kubernetes Sysconfig Policy. | `string` | `"demo.intra"` | no |
| <a name="input_ip_pool_from"></a> [ip\_pool\_from](#input\_ip\_pool\_from) | IP Pool Starting IP last Octet.  The var.network\_prefix will be combined with ip\_pool\_from for the Gateway Address. | `string` | `"20"` | no |
| <a name="input_ip_pool_gateway"></a> [ip\_pool\_gateway](#input\_ip\_pool\_gateway) | IP Pool Gateway last Octet.  The var.network\_prefix will be combined with ip\_pool\_gateway for the Gateway Address. | `string` | `"254"` | no |
| <a name="input_network_prefix"></a> [network\_prefix](#input\_network\_prefix) | IP Pool Gateway last Octet.  The var.network\_prefix will be combined with ip\_pool\_gateway for the Gateway Address. | `string` | `"10.200.0"` | no |
| <a name="input_organization"></a> [organization](#input\_organization) | Intersight Organization Name. | `string` | `"default"` | no |
| <a name="input_proxy_http_hostname"></a> [proxy\_http\_hostname](#input\_proxy\_http\_hostname) | HTTP Proxy Server Name or IP Address. | `string` | `""` | no |
| <a name="input_proxy_http_username"></a> [proxy\_http\_username](#input\_proxy\_http\_username) | HTTP Proxy Username. | `string` | `""` | no |
| <a name="input_proxy_https_hostname"></a> [proxy\_https\_hostname](#input\_proxy\_https\_hostname) | HTTPS Proxy Server Name or IP Address. | `string` | `""` | no |
| <a name="input_proxy_https_username"></a> [proxy\_https\_username](#input\_proxy\_https\_username) | HTTPS Proxy Username. | `string` | `""` | no |
| <a name="input_terraform_cloud_token"></a> [terraform\_cloud\_token](#input\_terraform\_cloud\_token) | Token to Authenticate to the Terraform Cloud | `string` | n/a | yes |
| <a name="input_terraform_version"></a> [terraform\_version](#input\_terraform\_version) | Terraform Target Version. | `string` | `"1.0.0"` | no |
| <a name="input_tfc_oath_token"></a> [tfc\_oath\_token](#input\_tfc\_oath\_token) | Terraform Cloud OAuth Token for VCS\_Repo Integration | `string` | n/a | yes |
| <a name="input_tfc_org_name"></a> [tfc\_org\_name](#input\_tfc\_org\_name) | Terraform Cloud Organization Name | `string` | n/a | yes |
| <a name="input_timezone"></a> [timezone](#input\_timezone) | Timezone for Kubernetes Sysconfig Policy. | `string` | `"America/New_York"` | no |
| <a name="input_vcs_repo"></a> [vcs\_repo](#input\_vcs\_repo) | Version Control System Repository. | `string` | n/a | yes |
| <a name="input_vsphere_target"></a> [vsphere\_target](#input\_vsphere\_target) | vSphere Server registered as a Target in Intersight.  The default, 210, only works if this is for the DevNet Sandbox. | `string` | `"210"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_tfc_agent_pool"></a> [tfc\_agent\_pool](#output\_tfc\_agent\_pool) | n/a |
| <a name="output_tfc_workspaces"></a> [tfc\_workspaces](#output\_tfc\_workspaces) | Terraform Cloud Workspace ID(s). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
