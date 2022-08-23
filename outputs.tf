# Define Output Values
# Attribute Reference: EC2 Instance Public IP

output "ec2_instance_publicip" {
  description = "EC2 Instance Public IP"
  value       = aws_instance.my-ec2-vm.*.public_ip
}

# Attribute Reference - Create Public DNS URL with http:// appended
output "ec2_publicdns1" {
  description = "Public DNS URL of an EC2 Instance"
  value       = aws_instance.my-ec2-vm.*.public_dns
}