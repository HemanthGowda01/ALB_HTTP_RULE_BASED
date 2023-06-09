# Security Group for Public Load Balancer
module "loadbalancer_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "loadbalancer_sg"
  description = "terraform load balancer security group for - http"
  vpc_id      = module.vpc.vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["http-80-tcp"]
  egress_rules        = ["all-all"]
  egress_cidr_blocks  = ["0.0.0.0/0"]

  tags = local.common_tags

  #ingress cidr block

}


