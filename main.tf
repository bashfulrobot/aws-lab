provider "aws" {
  region = var.dk_aws_region
  access_key = var.dk_access_key
  secret_key = var.dk_secret_key

  default_tags {
    tags = {
        terraform-source = var.lab_name
        terraform-deploy = "true"
    }
  }
}

# Note - I use ssh so I do not have to enter creds over https
# Because the module is in a subfolder, I needed to target it.
module "sysdig-cs" {
    source = "git@github.com:draios/cs-terraform-modules.git//terraform-cs-aws-vpc"

    aws_region = var.dk_aws_region
    vpc_name = "${var.lab_name}-vpc"

    cloudwatch_log_group_retention = 7

    nat_instance = true
}
