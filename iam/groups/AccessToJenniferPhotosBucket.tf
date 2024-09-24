resource "aws_iam_group" "AccessToJenniferPhotosBucket" {
  name = "AccessToJenniferPhotosBucket"
  path = "/"
}
resource "aws_iam_group_policy_attachment" "AccessJenniferPhotoS3Bucket_attach" {
  group      = aws_iam_group.AccessToJenniferPhotosBucket.name
  policy_arn = "arn:aws:iam::005343251202:policy/AccessJenniferPhotoS3Bucket"
}
