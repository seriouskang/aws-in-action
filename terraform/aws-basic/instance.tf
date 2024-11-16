resource "aws_instance" "example-ec2" {
  ami = var.AMIS[var.AWS_REGION]
  instance_type = "t2.nano"

  subnet_id = aws_subnet.main-public-1.id

  vpc_security_group_ids = [aws_security_group.allow-ssh.id]

  key_name = aws_key_pair.test-key-pair.key_name
}