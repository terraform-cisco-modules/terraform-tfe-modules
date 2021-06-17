output "tfe_workspace_id" {
  value = { for k, v in tfe_workspace.workspace : k => tfe_workspace.workspace[v.working_directory].id }
}

output "tfe_workspace_name" {
  value = { for k, v in tfe_workspace.workspace : k => v.name }
}
