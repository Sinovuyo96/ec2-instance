resource "aws_instance" "web" {
  ami           = var.image_id
  instance_type = var.type_of_instance
  
  tags = {
    Name = "Luja"
  }
}

output "public_ip" {
  value = aws_instance.web.public_ip
}