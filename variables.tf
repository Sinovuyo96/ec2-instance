variable "image_id" {
  type = string
  default = "ami-0d1cd67c26f5fca19"
  description = "this is my image id"
}

variable "type_of_instance" {
  type = string
  default = "t2.medium"
  description = "size of the instance"
}
