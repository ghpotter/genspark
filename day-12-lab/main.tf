module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-0cff7528ff583bf9a"
  instance_type          = "t2.micro"
  key_name               = "rd-key"
  monitoring             = true
  vpc_security_group_ids = ["sg-98995ae4"]
  subnet_id              = "subnet-e1ef54dd"
}

# Configure the AWS Provider (saved in another file)
# provider "aws" {
#   region = "us-east-1"
#   access_key = ""
#   secret_key = ""
# }