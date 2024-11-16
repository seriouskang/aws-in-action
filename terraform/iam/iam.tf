resource "aws_iam_group" "readonly" {
  name = "readonly"
}

resource "aws_iam_policy_attachment" "readonly-attach" {
  name = "readonly-attach"
  groups = [aws_iam_group.readonly.name]
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}