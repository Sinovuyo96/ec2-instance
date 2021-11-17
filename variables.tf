variable "image_id" {
  type = string
  default = "ami-05cd35b907b4ffe77"
  description = "this is my image id"
}

variable "type_of_instance" {
  type = string
  default = "t2.micro"
  description = "size of the instance"
}