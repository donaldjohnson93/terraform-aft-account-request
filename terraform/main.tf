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
    alternate_contact = jsonencode(
      {
        "billing"= {
          "email-address" = "donaldjohnson93@protonmail.com",
          "name"          = "Account Receiveable",
          "phone-number"  = "8157618777",
          "title"         = "Billing Department"
        },
        "operations"= {
          "email-address" = "donaldjohnson93@protonmail.com",
          "name"          = "Operations 24/7",
          "phone-number"  = "8157618777",
          "title"         = "DevOps Team"
        },
        "security"= {
          "email-address" = "donaldjohnson93@protonmail.com",
          "name"          = "Security Ops Center",
          "phone-number"  = "8157618777",
          "title"         = "SOC Team"
        }
      }
    )
  }

  account_customizations_name = "sandbox"
}
