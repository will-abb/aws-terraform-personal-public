resource "aws_iam_user" "williseedAdmin" {
  name = "williseedAdmin"
  path = "/"
}

resource "aws_iam_user_group_membership" "williseedAdmin_AWSAdministrators_membership" {
  user   = aws_iam_user.williseedAdmin.name
  groups = ["AWSAdministrators", "RestrictedIpAddress", "StrictMFAEnforced"]
}
