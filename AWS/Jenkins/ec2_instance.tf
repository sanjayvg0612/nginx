module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "ec2_instance"

  instance_type          = "t2.micro"
}
