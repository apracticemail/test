# ---------------------------------
# Terraform Modules by cloudguru.io
# ---------------------------------
provider "aws" {
  profile = var.aws_profile # Pass your AWS profile name, for more information about profile, click here. https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html
  region  = var.aws_region  # AWS region ID you want to deploy your resources in. To learn more about AWS region, checkout the following link https://aws.amazon.com/about-aws/global-infrastructure/regions_az/
}

terraform {
  required_version = "~> 0.13.0"
  backend "s3" {
    bucket = "cloudguru.io-terraform-state-storage"
    key    = "aws_iam_user/terraform.tfstate"
    region = "us-east-1"
  }
}

##### VARIABLES #####
variable "aws_profile" {
  description = "Enter a profile name of the AWS Account being used."
  default     = "default"
}

variable "aws_region" {
  description = "Enter a AWS Region ID as default region."
  default     = "us-east-1"
} 