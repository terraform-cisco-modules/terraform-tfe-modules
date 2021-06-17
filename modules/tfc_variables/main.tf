resource "tfe_variable" "variable" {
  category     = var.category
  description  = var.variable_list[count.index].description
  hcl          = var.variable_list[count.index].hcl
  key          = var.variable_list[count.index].key
  sensitive    = var.variable_list[count.index].sensitive
  value        = var.variable_list[count.index].value
  workspace_id = var.workspace_id
  count        = length(var.variable_list)
}

