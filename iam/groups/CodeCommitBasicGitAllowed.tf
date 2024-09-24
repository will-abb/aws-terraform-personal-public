resource "aws_iam_group" "CodeCommitBasicGitAllowed" {
  name = "CodeCommitBasicGitAllowed"
  path = "/"
}
resource "aws_iam_group_policy_attachment" "CodeCommitBasicGitAllowed_AWSCodeCommitPowerUser" {
  group      = aws_iam_group.CodeCommitBasicGitAllowed.name
  policy_arn = "arn:aws:iam::aws:policy/AWSCodeCommitPowerUser"
}
