resource "aws_eip" "my-eip" {
  instance = aws_instance.my-instance.id
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.my-instance.id
  allocation_id = aws_eip.my-eip.id
}