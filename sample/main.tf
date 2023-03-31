module "instance" {
  source = "./.."

  instance_ami = "ami-23424324"
  instance_type = "t2.micro"
  name = "test-instance"
}