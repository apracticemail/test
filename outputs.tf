# ---------------------------------
# Terraform Modules by cloudguru.io
# ---------------------------------
# Outputs are very important. These values will be saved into your terraform.tfstate file.
# These values can be pulled into other modules when required.
# This page contains outputs of all the possible attributes of an IAM User. 

# The most widely used outputs for IAM User ----------------------------

output "iam_users_names" {
  description = "The list of names of the IAM users created."
  value       = aws_iam_user.iam_users.*.name
}

output "iam_users_arns" {
  description = "The list of ARNs assigned to all the IAM users created."
  value       = aws_iam_user.iam_users.*.arn
}

output "iam_users_unique_ids" {
  description = "The list of unique identifications of all the IAM users created."
  value       = aws_iam_user.iam_users.*.unique_id
}