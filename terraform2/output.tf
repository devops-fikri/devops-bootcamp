output "server_ip_1" {
  value = aws_instance.my_server_1.public_ip
}

output "ssm_command_1" {
  value = "aws ssm start-session --target ${aws_instance.my_server_1.id}"
}

output "server_ip_2" {
  description = "Public IP of Server 2"
  value       = aws_instance.my_server_2.public_ip
}

output "ssm_command_2" {
  description = "SSM command for Server 2"
  value       = "aws ssm start-session --target ${aws_instance.my_server_2.id} --region ap-southeast-1"
}

output "server_private_ip" {
  description = "Private IP of the private server"
  value       = aws_instance.my_server_private.private_ip
}

output "ssm_command_private" {
  description = "SSM command for the private server"
  value       = "aws ssm start-session --target ${aws_instance.my_server_private.id} --region ap-southeast-1"
}

