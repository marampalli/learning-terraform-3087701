data "aws_ami" "app_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["bitnami-tomcat-*-x86_64-hvm-ebs-nami"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["979382823631"] # Bitnami
}

#module "s3_bucket" {
#  source = "terraform-aws-modules/s3-bucket/aws"

#  bucket = "my-s3-bucket-test-01"
#  acl    = "private"

#  versioning = {
#    enabled = true
#  }

#}
#resource "aws_instance" "blog" {
#  ami           = data.aws_ami.app_ami.id
#  instance_type = var.instance_type

#  tags = {
#    Name = "HelloWorld"
#  }
#}
