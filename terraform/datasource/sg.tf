data "aws_ip_ranges" "european_ec2" {
    regions = [ "eu-west-1", "eu-central-1" ]
    services = [ "ec2" ]
}

output "european_ec2_cidr_blocks" {
    value = "${data.aws_ip_ranges.european_ec2.cidr_blocks}"
}

resource "aws_security_group" "from_europe" {
  name = "from_europe"

  ingress {
    from_port = "443"
    to_port = "443"
    protocol = "tcp"
    cidr_blocks = "${data.aws_ip_ranges.european_ec2.cidr_blocks}"
  }
  tags = {
    CreateDate = "${data.aws_ip_ranges.european_ec2.create_date}"
    SyncToken = "${data.aws_ip_ranges.european_ec2.sync_token}"
  }
}