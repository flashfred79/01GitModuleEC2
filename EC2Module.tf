module "my_ec2_instance" {
  source  = "github.com/flashfred79/01GitModuleEC2.git"
  

  ec2_instance_type = "t2.micro"
  ec2_instance_name = "My_instance"
  ec2_ami_id =  "data.aws_ami.clou"
  
  }

output "instance_id" {
    value = module.my_ec2_instance.ec2_instance_id
}