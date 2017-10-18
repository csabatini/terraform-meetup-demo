output "instance_names" {
  value = "${aws_instance.demo_instance.*.tags.Name}"
}

output "instance_ips" {
  value = "${aws_instance.demo_instance.*.public_ip}"
}
