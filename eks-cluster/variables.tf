variable "aws_region" {
  description = "Enter region in which resources should be created"
  default= "eu-central-1"
}

variable "cluster_name" {
  default = "drei-dev-ekscluster"
}

variable "eks_cluster_role" {
  default = "eks-cluster-dev-role"
}

variable "node_group_name" {
  default = "drei-eks-dev-node-group"
}

variable "eks_node_role" {
  default = "eks-node-group-dev-role"
}

variable "instance_types" {
  default = "t3.medium"
}

variable "desired_size" {
  default = "2"
}

variable "max_size" {
  default = "5"
}

variable "min_size" {
  default = "2"
}