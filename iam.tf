resource "aws_iam_user" "b" {
  name = "bob"
  path = "/system/"

  tags = {
    tag-key = "Team=DevOps"
  }
}