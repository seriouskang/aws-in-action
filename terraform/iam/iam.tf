resource "aws_iam_group" "admin" {
  name = "admin"
}

resource "aws_iam_policy_attachment" "admin-attach" {
  name = "admin-attach"
  groups = [aws_iam_group.admin.name]
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}