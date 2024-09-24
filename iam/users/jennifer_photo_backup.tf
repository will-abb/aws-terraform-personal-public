resource "aws_iam_user" "jennifer_photo_backup" {
  name = "jennifer-photo-backup"
  path = "/"
}

resource "aws_iam_user_group_membership" "jennifer_photo_backup_AccessToJenniferPhotosBucket_membership" {
  user   = aws_iam_user.jennifer_photo_backup.name
  groups = ["AccessToJenniferPhotosBucket"]
}
