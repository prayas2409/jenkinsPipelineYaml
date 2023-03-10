variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-east-1"
}

variable "key_name" {
  description = " SSH keys to connect to ec2 instance"
  default     = "demo-key.pem"
}

variable "instance_type" {
  description = "instance type for ec2"
  default     = "t2.micro"
}

variable "security_group" {
  description = "Name of security group"
  default     = "HTTP_ssh"
}

variable "tag_name" {
  description = "Tag Name of for Ec2 instance"
  default     = "my-Terraform_ec2-instance"
}
variable "ami_id" {
  description = "AMI for Ubuntu Ec2 instance"
  default     = "ami-0557a15b87f6559cf"
}


variable "vpc-cidr" {
  default     = "172.31.0.0/16"
  description = "VPC CIDR BLOCK"
  type        = string
}
variable "public_subnet_1" {
  default     = "172.31.32.0/20"
  description = "Public_Subnet_1"
  type        = string
}