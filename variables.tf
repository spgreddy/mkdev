# variables.tf

variable "aws_region" {
  description = "The AWS region to deploy resources."
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "num_public_subnets" {
  description = "The number of public subnets across multiple AZs."
  type        = number
}

variable "public_subnet_cidrs" {
  description = "A list of CIDR blocks for public subnets."
  type        = list(string)
}

variable "num_private_subnets" {
  description = "The number of private subnets across multiple AZs."
  type        = number
}

variable "private_subnet_cidrs" {
  description = "A list of CIDR blocks for private subnets."
  type        = list(string)
}

variable "kubeconfig_path" {
  description = "The path to the Kubernetes config file."
  type        = string
}

variable "product_namespaces" {
  description = "A list of Kubernetes namespaces for each product."
  type        = list(string)
}


variable "aws_region" {
  description = "The AWS region where the resources will be created."
  default     = "us-east-1"  # Change this to your desired AWS region.
}

variable "eks_cluster_name" {
  description = "The name of the EKS cluster."
  default     = "example-eks-cluster"
}

variable "public_subnet_ids" {
  description = "List of public subnet IDs to launch EKS nodes."
  type        = list(string)
  default     = []  # Add public subnet IDs from your VPC.
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs to launch EKS nodes."
  type        = list(string)
  default     = []  # Add private subnet IDs from your VPC.
}