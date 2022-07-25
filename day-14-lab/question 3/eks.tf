# Configure the AWS Provider
# saved in private file
# provider "aws" {
#   region = "REGION"
#   access_key = "ACCESS_KEY"
#   secret_key = "SECRET_KEY"
# }


module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "17.24.0"
  cluster_name    = local.cluster_name
  cluster_version = "1.22"
  subnets         = module.vpc.private_subnets

  vpc_id = module.vpc.vpc_id

  node_groups = {
      desired_capacity = 2
      max_capacity     = 2
      min_capacity     = 2
  }  
}

data "aws_eks_cluster" "cluster" {
  name = module.eks.cluster_id
}

data "aws_eks_cluster_auth" "cluster" {
  name = module.eks.cluster_id
}