resource "aws_iam_user" "bitbucket_pipelines" {
  name = "bitbucket_pipelines"
  path = "/"
}

resource "aws_iam_user_group_membership" "bitbucket_pipelines_AWSAdministrators_membership" {
  user   = aws_iam_user.bitbucket_pipelines.name
  groups = ["AWSAdministrators"]
}
