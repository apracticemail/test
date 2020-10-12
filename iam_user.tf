# ---------------------------------
# Terraform Modules by cloudguru.io
# ---------------------------------
resource "aws_iam_user" "iam_users" {
  count                = length(var.iam_user_names)
# Required Arguments ----------------------
  name                 = var.iam_user_names[count.index]
# Optional Arguments ----------------------
  path                 = element(var.iam_path, count.index)
  
  permissions_boundary = var.permissions_boundary_policy_arn
# permissions_boundary = aws_iam_policy.iam_policy.arn
  
  force_destroy        = var.iam_force_destroy
  
  tags = merge(
    {
      Name = var.iam_user_names[count.index]
    },
    var.tags,
  )
}

# In this example resource the number of users created depends upon the number of names specified in the 'iam_user_names' list type variable.
