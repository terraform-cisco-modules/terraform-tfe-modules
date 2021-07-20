resource "tfe_variable" "variable" {
  category     = var.category
  for_each     = local.variable_list
  description  = each.value["description"]
  hcl          = each.value["hcl"]
  key          = each.value["key"]
  sensitive    = each.value["sensitive"]
  value        = each.value["value"]
  workspace_id = var.workspace_id
}

