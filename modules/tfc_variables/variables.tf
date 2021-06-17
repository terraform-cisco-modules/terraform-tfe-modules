variable "category" {
  description = "Whether this is a Terraform or environment variable."
  type        = string
}

variable "variable_list" {
  description = "Variable List (containing category, description, key, sensitive, value, workspace_id)."
  type        = list(map(string))
}

variable "workspace_id" {
  description = "Terraform Workspace to assign the variables."
  type        = string
}
