

variable "category" {
  description = "Whether this is a Terraform or environment variable."
  type        = string
}

variable "variable_list" {
  description = "Variable List (containing category, description, key, sensitive, value, workspace_id)."
  type = map(object(
    {
      description = optional(string)
      hcl         = optional(bool)
      key         = string
      sensitive   = optional(bool)
      value       = string
    }
  ))
  default = {
    default = {
      description = ""
      hcl         = false
      key         = "REQUIRED"
      sensitive   = false
      value       = "REQUIRED"
    }
  }
}

locals {
  variable_list = {
    for k, v in var.variable_list : k => {
      description = (v.description != null ? v.description : "")
      hcl         = coalesce(v.hcl, false)
      key         = (v.key != null ? v.key : "")
      sensitive   = coalesce(v.sensitive, false)
      value       = (v.value != null ? v.value : "")
    }
  }
}

variable "workspace_id" {
  description = "Terraform Workspace to assign the variables."
  type        = string
}
