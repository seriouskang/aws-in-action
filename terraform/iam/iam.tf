resource "aws_iam_group" "readonly" {
  name = "readonly"
}

resource "aws_iam_policy_attachment" "readonly-attach" {
  name = "readonly-attach"
  groups = [aws_iam_group.readonly.name]
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}

resource "aws_iam_user" "reader1" {
  name = "reader1"
}

resource "aws_iam_group_membership" "readonly-users" {
  name = "readonly-users"

  users = [
    aws_iam_user.reader1.name
  ]

  group = aws_iam_group.readonly.name
}