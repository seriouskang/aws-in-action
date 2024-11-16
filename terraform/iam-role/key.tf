resource "aws_key_pair" "test-key-pair" {
    key_name = "test-key-pair"
    public_key = file(var.PATH_TO_PUBLIC_KEY)
}