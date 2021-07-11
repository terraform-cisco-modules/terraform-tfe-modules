output "workspace" {
  value = {
    id = tfe_workspace.workspace.id
    name = tfe_workspace.workspace.name
  }
}
