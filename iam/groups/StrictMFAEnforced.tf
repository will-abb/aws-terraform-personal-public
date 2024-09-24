resource "aws_iam_group" "StrictMFAEnforced" {
  name = "StrictMFAEnforced"
  path = "/"
}
resource "aws_iam_group_policy_attachment" "StrictMFAEnforced_VeryStrictMFA_attach" {
  group      = aws_iam_group.StrictMFAEnforced.name
  policy_arn = "arn:aws:iam::005343251202:policy/VeryStrictMFA"
}
