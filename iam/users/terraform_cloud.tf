resource "aws_iam_user" "terraform_cloud" {
  name = "terraform-cloud"
  path = "/"
}

resource "aws_iam_user_group_membership" "terraform_cloud_AWSAdministrators_membership" {
  user   = aws_iam_user.terraform_cloud.name
  groups = ["AWSAdministrators"]
}
