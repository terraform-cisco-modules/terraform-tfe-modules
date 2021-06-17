# Terraform Cloud - Workspace Modules

## This Repository consists of three modules

* tfc_agent_pool
* tfc_workspaces
* tfc_variables

tfc_agent_pool is used to obtain a data source of an existing Agent Pool from Terraform Cloud.

tfc_workspaces will build workspaces within Terraform Cloud.

tfc_variables will assign variables to workspaced created with the tfc_workspaces module

Please refer to the README.md in each module for further details.

IMPORTANT NOTE: The resource tfe_variables stores data in plain text even when attributes are marked as sensitive.  Be very cautious not to allow state files to be synched to a public repository.

## Usage

* Please refer to the example folder for a working example.
