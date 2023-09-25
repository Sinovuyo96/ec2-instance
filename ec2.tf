###########################
#                         #
###########################
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.type_of_instance

  user_data = <<-EOL
#!/bin/bash
#install Docker
sudo yum update -y 
sudo amazon-linux-extras install docker -y 
sudo dockerd
sudo service docker start
sudo systemctl start docker
sudo service docker status 
sudo groupadd docker
sudo usermod -a -G docker ec2-user 
newgrp docker 
docker — version

Install docker-compose

curl -L [https://github.com/docker/compose/releases/download/1.21.0/docker-compose-$(uname](https://github.com/docker/compose/releases/download/1.21.0/docker-compose-$(uname) -s)-$(uname -m) -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose 
sudo docker run -d --restart=unless-stopped -p 80:80 -p 443:443 --privileged rancher/rancher
  EOL

  tags = {
    Name = "HelloWorld"
  }
}
