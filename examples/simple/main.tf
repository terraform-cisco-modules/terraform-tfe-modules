#__________________________________________________________
#
# Terraform Cloud Agent Pool Module
#__________________________________________________________

module "tfc_agent_pool" {
  source       = "terraform-cisco-modules/tfe//modules/tfc_agent_pools"
  agent_pool   = var.agent_pool
  tfc_org_name = var.tfc_org_name
}


#__________________________________________________________
#
# Terraform Cloud Workspaces
#__________________________________________________________

module "tfc_workspaces" {
  source = "terraform-cisco-modules/tfe//modules/tfc_workspaces"
  depends_on = [
    module.tfc_agent_pool
  ]
  tfc_oath_token = var.tfc_oath_token
  tfc_org_name   = var.tfc_organization
  workspace_list = {
    "global_vars" = {
      auto_apply          = true
      description         = "Global Variables Workspace."
      global_remote_state = true
      name                = "${var.cluster_name}_global_vars"
      terraform_version   = var.terraform_version
      vcs_repo            = var.vcs_repo
      working_directory   = "global_vars"
    },
    "iks" = {
      auto_apply        = true
      description       = "Intersight Kubernetes Service Workspace."
      name              = "${var.cluster_name}_iks"
      terraform_version = var.terraform_version
      vcs_repo          = var.vcs_repo
      working_directory = "iks"
    },
    "kube" = {
      auto_apply          = true
      description         = "Intersight Kubernetes Service - kube_config Workspace."
      global_remote_state = true
      name                = "${var.cluster_name}_kube"
      terraform_version   = var.terraform_version
      vcs_repo            = var.vcs_repo
      working_directory   = "kube"
    },
    "iwo" = {
      auto_apply        = true
      agent_pool        = module.tfc_agent_pool.tfc_agent_pool
      description       = "Application Workspace - Intersight Workload Optimizer."
      execution_mode    = "agent"
      name              = "${var.cluster_name}_iwo"
      terraform_version = var.terraform_version
      vcs_repo          = var.vcs_repo
      working_directory = "iwo"
    },
    "app_hello" = {
      auto_apply        = true
      agent_pool        = module.tfc_agent_pool.tfc_agent_pool
      description       = "Application Workspace - Hello Kubernetes."
      execution_mode    = "agent"
      name              = "${var.cluster_name}_app_hello"
      terraform_version = var.terraform_version
      vcs_repo          = var.vcs_repo
      working_directory = "app_hello"
    },
  }
}

#__________________________________________________________
#
# Terraform Cloud Workspace Variables: global_vars
#__________________________________________________________

module "tfc_variables_global" {
  source = "terraform-cisco-modules/tfe//modules/tfc_variables"
  depends_on = [
    module.tfc_workspaces
  ]
  category = "terraform"
  # The global_vars (key) at the end of the id is the working_directory value from tfc_workspaces
  workspace_id = module.tfc_workspaces.tfe_workspace_id.global_vars
  variable_list = [
    {
      description = "Intersight Organization."
      hcl         = false
      key         = "organization"
      sensitive   = false
      value       = var.organization
    },
    {
      description = "Domain Name."
      hcl         = false
      key         = "domain_name"
      sensitive   = false
      value       = var.domain_name
    },
    {
      description = "DNS Servers."
      hcl         = true
      key         = "dns_servers"
      sensitive   = false
      value       = var.dns_servers
    },
    {
      description = "IKS Cluster Name."
      hcl         = false
      key         = "cluster_name"
      sensitive   = false
      value       = var.cluster_name
    },
    {
      description = "Kubernetes Add-ons Policy List."
      hcl         = true
      key         = "addons_list"
      sensitive   = false
      value       = var.addons_list
    },
    {
      description = "Network Prefix for IP Pool Policy."
      hcl         = false
      key         = "network_prefix"
      sensitive   = false
      value       = var.network_prefix
    },
    {
      description = "IP Pool Gateway last Octet."
      hcl         = false
      key         = "ip_pool_gateway"
      sensitive   = false
      value       = var.ip_pool_gateway
    },
    {
      description = "IP Pool Starting Address."
      hcl         = false
      key         = "ip_pool_from"
      sensitive   = false
      value       = var.ip_pool_from
    },
    {
      description = "HTTP Proxy Server Name or IP Address."
      hcl         = false
      key         = "proxy_http_hostname"
      sensitive   = false
      value       = var.proxy_http_hostname
    },
    {
      description = "HTTP Proxy Username."
      hcl         = false
      key         = "proxy_http_username"
      sensitive   = false
      value       = var.proxy_http_username
    },
    {
      description = "HTTPS Proxy Server Name or IP Address."
      hcl         = false
      key         = "proxy_https_hostname"
      sensitive   = false
      value       = var.proxy_https_hostname
    },
    {
      description = "HTTPS Proxy Username."
      hcl         = false
      key         = "proxy_https_username"
      sensitive   = false
      value       = var.proxy_https_username
    },
    {
      description = "vSphere Server registered as a Target in Intersight."
      hcl         = false
      key         = "vsphere_target"
      sensitive   = false
      value       = var.vsphere_target
    },
  ]
}
