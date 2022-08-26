## Reource Block Settings
# Resource-1: Create EC2 Instance
resource "aws_instance" "my-ec2-vm" {
  ami                    = data.aws_ami.amzLinux.id
  instance_type          = var.ec2_instance_type
  key_name               = "MyKeyPair"
  count                  = 2
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  # user_data              = file("apache-install.sh")
  user_data = file("apache-install.sh")

  tags = {
    "Name" = "Terraform-Cloud-${count.index}"
  }
}