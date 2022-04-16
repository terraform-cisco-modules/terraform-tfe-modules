output "tfe_workspace_id" {
  value = { for k, v in tfe_workspace.workspaces : k => tfe_workspace.workspaces[k].id }
}

output "tfe_workspace_name" {
  value = { for k, v in tfe_workspace.workspaces : k => v.name }
}
