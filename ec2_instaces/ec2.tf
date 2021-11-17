module "my_server" {
  source        = "../../../ec2-instance"
  instance_type = "t2.micro"
  image_id      = "ami-05cd35b907b4ffe77"
  server_name   = "miso"
}