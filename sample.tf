# Sample Terraform file to create an EC2 instance
# provider "aws" {
# resource "aws_instance" "instance_built_using_terraform" {
#   ami           = "ami-09c813fb71547fc4f"
#   instance_type = "t3.micro"

#   tags = {
#     Name = "Instance Built Using Terraform"
#   }
# }


#Instance creation using Terraform with variables, Loops and Lists
# provider "aws" {}

# variable "ami" {
#   default = "ami-09c813fb71547fc4f"
# }

# variable "instance_type" {
#   default = "t3.small"
# }

# variable "instances" {
#   default = ["frontend", "catalogue", "cart", "user", "shipping", "payment", "mysql", "redis", "rabbitmq", "mongodb"]  
# }

# resource "aws_instance" "instance" {
#   count = length(var.instances)
#   ami           = var.ami
#   instance_type = var.instance_type

#   tags = {
#     Name = var.instances[count.index]
#   }
# }

#Instance creation using Terraform with variables and Maps
provider "aws" {}

variable "instances" {
  default = {
    frontend = {
      instance_type = "t3.small"
    }
    catalogue = {
      instance_type = "t3.small"
    }
  }
}

resource "aws_instance" "web" {
  for_each      = var.instances
  ami           = "ami-09c813fb71547fc4f"
  instance_type = each.value["instance_type"]

  tags = {
    Name = each.key
  }
}



