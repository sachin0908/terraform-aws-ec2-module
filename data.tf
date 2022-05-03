data "aws_iam_instance_profile" "instance_profile" {
  name = "ec2"
}
data "aws_availability_zone" "az" {
  name                   = "us-east-1d"
  all_availability_zones = false
  state                  = "available"
}
data "aws_key_pair" "key" {
  key_name = "Terraform_Test_key"
}
data "aws_subnet" "selected" {
  vpc_id            = "vpc-03b00af195bd2b431"
  availability_zone = "us-east-1d"
  filter {
    name   = "tag:Name"
    values = ["subnet_1"]
  }
}
data "aws_security_groups" "sg" {
  tags = {
    Name = "default-sg"
  }
}
