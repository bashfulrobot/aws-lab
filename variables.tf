variable "LAB_NAME" {
  type = string
  description = "The name of this lab, and also used to prefix tags"
  default = "aws-lab"
}

variable "AWS_REGION" {
  type = string
  description = "The AWS region that all resources/modules will use."
  default = "us-west-2"
}
