# module "catalogue" {
#   source = "../terraform-aws-instance"
#   ami_id = "ami-0220d79f3f480ecf5"
#   sg_ids = ["sg-072abb792ef02fb77"]
#   instance_type = "t3.micro"
#   tags = {
#     Name = "modules-demo"
#     Terraform = "true"
#   }
# }

module "cart" {
  source = "../terraform-aws-instance"
  ami_id = var.ami_id
  sg_ids = var.sg_ids
  instance_type = var.instance_type
  tags = var.tags
}

output "private_ip" {
  value = module.cart.private_ip
}

output "public_ip" {
  value = module.cart.public_ip
}