# eks-nodegroups.tf

resource "aws_eks_node_group" "mkdev_public" {
  cluster_name    = aws_eks_cluster.mkdev.name
  node_group_name = "public-ng"
  node_role_arn   = aws_iam_role.eks_node_group.arn
  subnet_ids      = var.public_subnet_ids

  scaling_config {
    desired_size = 2
    min_size     = 1
    max_size     = 5
  }

  depends_on = [aws_iam_role_policy_attachment.eks_node_group]
}

resource "aws_eks_node_group" "mkdev_private" {
  cluster_name    = aws_eks_cluster.mkdev.name
  node_group_name = "private-ng"
  node_role_arn   = aws_iam_role.eks_node_group.arn
  subnet_ids      = var.private_subnet_ids

  scaling_config {
    desired_size = 2
    min_size     = 1
    max_size     = 5
  }

  depends_on = [aws_iam_role_policy_attachment.eks_node_group]
}

resource "aws_iam_role" "eks_node_group" {
  name = "eks-node-group-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "eks_node_group" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
  role       = aws_iam_role.eks_node_group.name
}

resource "aws_iam_role_policy_attachment" "eks_node_group_cni" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  role       = aws_iam_role.eks_node_group.name
}
