resource "aws_instance" "example" {
  ami           = "ami-08ee1453725d19cdb"
  instance_type = "t2.micro"
  key_name      = "keypair1"
  count         = "1"
  tags = {
    Name = "task-1"
  }
  security_groups = [aws_security_group.example_sg.name]
  user_data       = file("sample.sh")
}
