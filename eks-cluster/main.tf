provider "aws" {
    region = "${var.aws_region}" 
}

#======================
# Terraform Backend
#======================

terraform {
  backend "s3" {
    bucket = "drei-dev-terraform-state-eks-cluster"
    key    = "terraform.tfstate"
    region = "eu-central-1"	
  }
}

#======================
# EKS Cluster
#======================

module eks-cluster {
  source = "../modules/eks-cluster"
  subnet_ids = ["subnet-0728625b3c65de5cf", "subnet-0d10a296e9aebcfdd", "subnet-012b10853ed12f6ad"]
  cluster_name = var.cluster_name
  instance_types = var.instance_types
  desired_size = var.desired_size
  max_size = var.max_size
  min_size = var.min_size
  eks_cluster_role = var.eks_cluster_role
  node_group_name = var.node_group_name
  eks_node_role = var.eks_node_role
} 

###OUTPUT

output "eks-cluster-endpoint" {
  value = "${module.eks-cluster.endpoint}"
}

output "kubeconfig-certificate-authority-data" {
  value = "${module.eks-cluster.kubeconfig-certificate-authority-data}"
}
