
variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
  default     = "aws-prod"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "prod"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_a_cidr" {
  description = "CIDR for public subnet in AZ A"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_b_cidr" {
  description = "CIDR for public subnet in AZ B"
  type        = string
  default     = "10.0.2.0/24"
}

variable "private_subnet_a_cidr" {
  description = "CIDR for private subnet in AZ A"
  type        = string
  default     = "10.0.3.0/24"
}

variable "private_subnet_b_cidr" {
  description = "CIDR for private subnet in AZ B"
  type        = string
  default     = "10.0.4.0/24"
}

variable "key_name" {
  description = "EC2 key pair name for the bastion host"
  type        = string
}

variable "ssh_allowed_cidr" {
  description = "CIDR allowed to SSH into the bastion host"
  type        = string
  default     = "0.0.0.0/0"
}

variable "bastion_instance_type" {
  description = "Instance type for the bastion host"
  type        = string
  default     = "t2.micro"
}

variable "app_instance_type" {
  description = "Instance type for application servers"
  type        = string
  default     = "t2.micro"
}

variable "tamplate_ami_value" {
  description = "AMI value  for launch tamplate"
  type = string
  default = "ami-0c02fb55956c7d316"
}

variable "bastion_ami_value" {
  description = "AMI value  for Bastion Host"
   type = string 
   default = "ami-0c02fb55956c7d316" 
}