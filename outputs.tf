output "instance_one_ip" {
  value = "${aws_instance.demo_instance.0.public_ip}"
}

output "instance_two_ip" {
  value = "${aws_instance.demo_instance.1.public_ip}"
}
