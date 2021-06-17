#__________________________________________________________
#
# Terraform Cloud General Variables
#__________________________________________________________

variable "terraform_cloud_token" {
  description = "Token to Authenticate to the Terraform Cloud"
  sensitive   = true
  type        = string
}

variable "tfc_org_name" {
  description = "Terraform Cloud Organization Name"
  type        = string
}

variable "terraform_version" {
  default     = "1.0.0"
  description = "Terraform Target Version."
  type        = string
}

# tfc_oath_token and vcs_repo are only needed if you are doing VCS Integration
variable "tfc_oath_token" {
  description = "Terraform Cloud OAuth Token for VCS_Repo Integration"
  sensitive   = true
  type        = string
}

variable "vcs_repo" {
  description = "Version Control System Repository."
  type        = string
}

#__________________________________________________________
#
# Terraform Cloud Agent Pool Module Variables
#__________________________________________________________

variable "agent_pool" {
  description = "Terraform Cloud Agent Pool"
  type        = string
}

#__________________________________________________________
#
# The following Variables Are specific to the example
#__________________________________________________________

#__________________________________________________________
#
# Global Variables
#__________________________________________________________

variable "organization" {
  default     = "default"
  description = "Intersight Organization Name."
  type        = string
}

variable "cluster_name" {
  default     = "iks"
  description = "Intersight Kubernetes Service Cluster Name."
  type        = string
}

#______________________________________________
#
# DNS Variables
#______________________________________________

variable "domain_name" {
  default     = "demo.intra"
  description = "Domain Name for Kubernetes Sysconfig Policy."
  type        = string
}

variable "dns_servers" {
  default     = "[\"10.200.0.100\"]"
  description = "Primary DNS Server for Kubernetes Sysconfig Policy."
  type        = string
}

#______________________________________________
#
# Timezone
#______________________________________________

variable "timezone" {
  default     = "America/New_York"
  description = "Timezone for Kubernetes Sysconfig Policy."
  type        = string
}


#______________________________________________
#
# IP Pool Variables
#______________________________________________

variable "network_prefix" {
  default     = "10.200.0"
  description = "IP Pool Gateway last Octet.  The var.network_prefix will be combined with ip_pool_gateway for the Gateway Address."
  type        = string
}

variable "ip_pool_gateway" {
  default     = "254"
  description = "IP Pool Gateway last Octet.  The var.network_prefix will be combined with ip_pool_gateway for the Gateway Address."
  type        = string
}

variable "ip_pool_from" {
  default     = "20"
  description = "IP Pool Starting IP last Octet.  The var.network_prefix will be combined with ip_pool_from for the Gateway Address."
  type        = string
}

#______________________________________________
#
# Kubernetes Add-ons List
#______________________________________________

variable "addons_list" {
  default     = "[]"
  description = "List of Add-ons to be added to Cluster."
  type        = string
}

#______________________________________________
#
# Kubernetes Runtime Proxy Variables
#______________________________________________

variable "proxy_http_hostname" {
  default     = ""
  description = "HTTP Proxy Server Name or IP Address."
  type        = string
}

variable "proxy_http_username" {
  default     = ""
  description = "HTTP Proxy Username."
  type        = string
}

variable "proxy_https_hostname" {
  default     = ""
  description = "HTTPS Proxy Server Name or IP Address."
  type        = string
}

variable "proxy_https_username" {
  default     = ""
  description = "HTTPS Proxy Username."
  type        = string
}


#______________________________________________
#
# Kubernetes VM Infra Policy Variables
#______________________________________________

variable "vsphere_target" {
  default     = "210"
  description = "vSphere Server registered as a Target in Intersight.  The default, 210, only works if this is for the DevNet Sandbox."
  type        = string
}

