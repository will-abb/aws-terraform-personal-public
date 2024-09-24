resource "aws_iam_group" "RestrictedIpAddress" {
  name = "RestrictedIpAddress"
  path = "/"
}

resource "aws_iam_group_policy_attachment" "AllowActionsFromIpOnly_attach" {
  group      = aws_iam_group.RestrictedIpAddress.name
  policy_arn = "arn:aws:iam::005343251202:policy/AllowActionsFromIpOnly"
}
