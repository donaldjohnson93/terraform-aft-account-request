module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "donaldjohnson93+sandbox@protonmail.com"
    AccountName               = "sandbox"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "donaldjohnson93+sandbox@protonmail.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}

module "organization" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "donaldjohnson93+organization@protonmail.com"
    AccountName               = "organization"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "donaldjohnson93+organization@protonmail.com"
    SSOUserFirstName          = "Organization"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
