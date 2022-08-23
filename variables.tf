# Input Variables

variable "aws_region" {
  description = "Region in which AWS resources to be created"
  type        = string
}

variable "ec2_instance_type" {
  description = "(EC2 Instance Type)"
  type        = string
  default     = "t3.micro"
  # default = "t2.small"
}
