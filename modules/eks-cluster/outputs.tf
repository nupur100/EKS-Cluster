output "endpoint" {
  value = aws_eks_cluster.drei_eks_cluster.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.drei_eks_cluster.certificate_authority[0].data
}