variable "tags" {}
variable "default_tags" {
  default = {
    source = "Terraform"
    module = "terraform-aws-network"
  }
}

# Network
variable "subnet_id" {}
variable "vpc_security_group_ids" {}

#Instance
variable "instance_name" {}
variable "instance_count" {}
variable "instance_ami" {
  default = "ami-0cc87e5027adcdca8"
}
variable "instance_type" {
  default = "t2.nano"
}
variable "key_name" {
  default = "testKey"
}