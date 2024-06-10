output "eks_cluster_name" {
    value = aws_eks_cluster.eks_cluster.name
}

output "eks_cluster_role_arn" {
    value = aws_iam_role.eks_cluster_role.arn
}

output "node_group_arn" {
    value = aws_iam_role.worker-role.arn
  
}