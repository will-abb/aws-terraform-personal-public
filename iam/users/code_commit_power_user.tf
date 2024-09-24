
resource "aws_iam_user" "code_commit_power_user" {
  name = "code_commit_power_user"
  path = "/"
}

resource "aws_iam_user_group_membership" "code_commit_power_user_CodeCommitBasicGitAllowed_membership" {
  user   = aws_iam_user.code_commit_power_user.name
  groups = ["CodeCommitBasicGitAllowed", "RestrictedIpAddres"]
}
