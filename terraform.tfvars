# ---------------------------------
# Terraform Modules by cloudguru.io
# ---------------------------------
# These are sample values to test this module.
# You can use the same file with your values.

# Required Arguments ----------------------
iam_user_names = ["iam_user_1", "iam_user_2", "iam_user_3"]

# Optional Arguments ----------------------
iam_path       = ["/"]
# Pass only one value to iam_path if you want to use the same values for all users or else pass in multiple values for each user to use in this list.

permissions_boundary_policy_arn = "arn:aws:iam::991983039411:policy/test"

# Tags -----------------------------------
tags = {
  environment = "DEV"
  app         = "shared"
  key3        = "value3"
} 
