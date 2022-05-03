variable "ami_id" {
  type    = string
  default = "ami-0022f774911c1d690"
}
variable "instance_type" {
  type    = string
  default = "t2.micro"
}
variable "associate_public_ip" {
  type    = bool
  default = true
}
variable "az" {
  type    = string
  default = "us-east-1d"
}
variable "disable_api_termination" {
  type    = bool
  default = false
}
variable "instance_profile" {
  type    = string
  default = "ec2"
}
variable "key" {
  type    = string
  default = "Terraform_Test_key"
}
variable "sg" {
  type    = list(any)
  default = ["sg-09b9b0730a48a28b7"]
}
variable "subnet_id" {
  type    = string
  default = "subnet-0bca4add4ffe87abb"
}
variable "volume_size" {
  type    = number
  default = 10
}
variable "application" {
  type    = string
  default = "tcw"
}
variable "organization" {
  type    = string
  default = "thecloudworld"
}
