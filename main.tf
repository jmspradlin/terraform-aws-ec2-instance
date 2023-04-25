provider "aws" {
  region = "us-east-2"
}
data "aws_caller_identity" "current" {}
locals {
  computed_tags = {
    LastModifiedTime = "${timestamp()}"
    LastModifiedBy   = "${data.aws_caller_identity.current.arn}"
  }
}

module "aws_instance01" {
  count  = var.instance_count
  source = "terraform-aws-modules/ec2-instance/aws"

  name                   = "instance-${formatdate("DD-MMM-YY", timestamp())}-${format("%02d", count.index + 1)}"
  ami                    = var.instance_ami
  instance_type          = var.instance_type
  monitoring             = true
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids
  tags                   = merge(var.default_tags, local.computed_tags, var.tags)
}