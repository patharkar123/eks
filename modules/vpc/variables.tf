variable "name" {
  description = "Name prefix for VPC resources"
  type        = string
}

variable "cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "az_count" {
  description = "Number of availability zones to spread subnets across"
  type        = number
  default     = 2
}

variable "cluster_name" {
  description = "EKS cluster name, used for subnet Kubernetes tags"
  type        = string
}

variable "enable_nat_gateway" {
  description = "Whether to provision a NAT gateway for private subnets"
  type        = bool
  default     = true
}

variable "single_nat_gateway" {
  description = "Use a single shared NAT gateway instead of one per AZ"
  type        = bool
  default     = true
}
