output "id" {
  value = { for v in sort(keys(tfe_variable.variable)) : v => tfe_variable.variable[v].id }
}
