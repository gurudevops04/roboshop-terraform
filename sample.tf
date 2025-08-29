resource "aws_instance" "instance_built_using_terraform" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"

  tags = {
    Name = "Instance Built Using Terraform"
  }
}