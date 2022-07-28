variable "lab_name" {
  type        = string
  description = "The name of this lab, and also used to prefix tags"
  default     = "aws-lab"
}

variable "dk_aws_region" {
  type        = string
  description = "The AWS region that all resources/modules will use."
  default     = "us-west-2"
}

variable "dk_access_key" {
  type = string
}

variable "dk_secret_key" {
  type = string
}
