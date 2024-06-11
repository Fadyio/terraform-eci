locals {
  project = {
    "fem-eci-project" = {
      description = "Example description of project"
    }
  }

  workspace = {
    "fem-eci-tfe" = {
      description         = "Example automation workspace for Terraform Cloud."
      execution_mode      = "remote"
      project_id          = module.project["fem-eci-project"].id
      vcs_repo_identifier = "${var.github_organization_name}/terraform-eci"
    }
    "fem-eci-github" = {
      description         = "Example automation workspace for Terraform Cloud and github."
      execution_mode      = "local"
      project_id          = module.project["fem-eci-project"].id
      vcs_repo_identifier = "${var.github_organization_name}/terraform-github"
    }
  }
}

