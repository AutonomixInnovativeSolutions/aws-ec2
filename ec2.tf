
resource "aws_instance" "ec2" {
    
  ami           = var.ami
  instance_type = var.instance_type

 iam_instance_profile = var.instance_profile
 vpc_security_group_ids = var.security_groups
 subnet_id = var.subnet_id
associate_public_ip_address = var.public_ip
key_name = var.key_name
user_data = var.user_data
 root_block_device {
   delete_on_termination = true
encrypted = var.encrypted
 }
 tags ={
    Name = var.name
 }
}