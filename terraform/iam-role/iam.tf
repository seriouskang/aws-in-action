resource "aws_iam_role" "s3-test-bucket-role" {
  name = "s3-test-bucket-role"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF

}

resource "aws_iam_role_policy" "s3-test-bucket-role-policy" {
  name = "s3-test-bucket-role-policy"
  role = aws_iam_role.s3-test-bucket-role.id
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
              "s3:*"
            ],
            "Resource": [
              "arn:aws:s3:::test-bucket-241117",
              "arn:aws:s3:::test-bucket-241117/*"
            ]
        }
    ]
}
EOF
}

resource "aws_iam_instance_profile" "s3-test-bucket-role-instance-profile" {
  name = "test-bucket-role"
  role = aws_iam_role.s3-test-bucket-role.name
}