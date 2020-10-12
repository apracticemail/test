# ---------------------------------
# Terraform Modules by cloudguru.io
# ---------------------------------

# Required Arguments ---------------------- 
variable "iam_user_names" {
  description = "Enter a list of names for the IAM Users that need to be created."
  type        = list
}

# Optional Arguments ---------------------- 
variable "iam_path" {
  description = "Enter a list of paths in IAM where the users shall be created."
  type        = list
}

variable "permissions_boundary_policy_arn" {
  description = "Enter the ARN of the IAM policy that shall serve as a permissions boundary for each of the IAM users."
}

variable "iam_force_destroy" {
  description = "Enter a boolean value to set whether or not the IAM user should be destroyed even if it has resources that aren't managed by terraform relative to the IAM users like MFA-devices, access keys."
  default     = "false"
}

# Tags -----------------------------------
variable "tags" {
  description = "Enter a map of tags with keys and values."
  type        = map
}
