provider "aws" {
  region  = "${var.region}"
  profile = "${var.profile}"
}

resource "aws_key_pair" "demo_ssh_keypairs" {
  key_name   = "demo_ssh_keypair"
  public_key = "${var.public_key}"
}

resource "aws_instance" "demo_instance" {
  ami           = "${var.amazon_linux_ami}"
  instance_type = "${var.instance_type}"
  key_name      = "${aws_key_pair.demo_ssh_keypairs.key_name}"
  count         = 2

  tags {
    Name = "demo"
  }
}
