# Terraform cloud
terraform {
  cloud {
    organization = "bashfulrobot"

    workspaces {
      name = "aws-lab"
    }
  }

  required_version = ">= 1.2.0"
}
