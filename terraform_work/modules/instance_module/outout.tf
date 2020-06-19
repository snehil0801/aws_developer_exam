output "instance-url-to-hit" {
  value = "http://${aws_instance.snehil-instance.public_dns}/hello.html"
}