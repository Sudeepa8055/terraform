output "public_ip" {
  value = aws_instance.example[0].public_ip
}
output "private_ip" {
  value = aws_instance.example[0].private_ip
}

