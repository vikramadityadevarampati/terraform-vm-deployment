output "public_ips" {
  description = "Public IPs of created instances"
  value       = { for key, instance in aws_instance.vm : key => instance.public_ip }
}

output "private_ips" {
  description = "Private IPs of created instances"
  value       = { for key, instance in aws_instance.vm : key => instance.private_ip }
}
