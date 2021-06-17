data "tfe_agent_pool" "agent_pool" {
  name         = var.agent_pool
  organization = var.tfc_org_name
}
