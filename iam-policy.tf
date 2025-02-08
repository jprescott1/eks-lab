resource "aws_iam_policy" "eks_role_policy" {
  name   = "EKSClusterIAMAccess"
  policy = templatefile("${path.module}/policies/eks-cluster-inline-policy.json", { AWS_ACCOUNT_ID = var.aws_account_id })
}