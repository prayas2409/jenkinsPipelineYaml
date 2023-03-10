provider "aws" {
  region     = "us-east-1"
  
}

#Create a new EC2 launch configuration
resource "aws_instance" "ec2_public" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = var.key_name
  security_groups             = [var.security_group]
  subnet_id                   = var.public_subnet_1
  associate_public_ip_address = true
  #user_data                   = "${data.template_file.provision.rendered}"
  #iam_instance_profile = "${aws_iam_instance_profile.some_profile.id}"
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    "Name" = "EC2-PUBLIC"
  }
}