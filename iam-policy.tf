resource "aws_iam_policy" "eks_role_policy" {
  name   = "EKSClusterIAMAccess"
  policy = templatefile("${path.module}/policies/iam-create-role-policy.json", { AWS_ACCOUNT_ID = var.aws_account_id })
}