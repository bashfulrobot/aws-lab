provider "aws" {
  region = var.AWS_REGION

  default_tags {
    tags = {
        TF-Deploy = var.LAB_NAME
        Terraform = "true"
    }
  }
}

# Note - I use ssh so I do not have to enter creds over https
module "sysdig-cs" {
    source = "git@github.com:draios/cs-terraform-modules.git"

    aws_region = var.AWS_REGION
    vpc_name = "{$var.LAB_NAME}-vpc"

    cloudwatch_log_group_retention = 7

    nat_instance = true
}
