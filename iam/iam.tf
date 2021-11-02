resource "aws_iam_user" "bob" {
  name = "bob"
  tags = {
    Team = "DevOps"
  }
}

resource "aws_iam_group" "sysusers" {
  name = "sysusers"
  path = "/users/"
  
}

resource "aws_iam_group_membership" "team" {
  name = "member"

  users = [
    aws_iam_user.bob.name
  ]

  group = aws_iam_group.sysusers.name
}

output "aws_iam_user" {
  value = aws_iam_user.bob.name
}
output "aws_iam_group" {
  value = aws_iam_group.sysusers.name
}