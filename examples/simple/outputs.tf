#__________________________________________________________
#
# Terraform Cloud Agent Pool Module Outputs
#__________________________________________________________

output "tfc_agent_pool" {
  value = module.tfc_agent_pool
}


#__________________________________________________________
#
# Terraform Cloud Workspaces Module Outputs
#__________________________________________________________

output "tfc_workspaces" {
  description = "Terraform Cloud Workspace ID(s)."
  value       = module.tfc_workspaces
}

#__________________________________________________________
#
# Terraform Cloud Variables Module Outputs
#__________________________________________________________

