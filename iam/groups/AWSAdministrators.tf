resource "aws_iam_group" "AWSAdministrators" {
  name = "AWSAdministrators"
  path = "/"
}

resource "aws_iam_group_policy_attachment" "AWSAdministrators_access" {
  group      = aws_iam_group.AWSAdministrators.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
