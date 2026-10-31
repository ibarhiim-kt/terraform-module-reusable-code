output "public_ip" {
  value = [for instance in aws_instance.my-instance:instance.public_ip]
}
