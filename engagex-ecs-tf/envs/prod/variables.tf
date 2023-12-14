variable "cluster_name" {
  type = string
}

variable "app_name" {
  type = string
}

variable "aws_region" {
  type = string
}

variable "ecr_name_production" {
  type    = string
  default = null
}

#variables.tf


variable "health_check_path" {
  default = "/index"
}

variable "tgname" {
  type = string

}

variable "create_module" {
  type    = bool
  default = false
}

variable "key_name" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "min_size" {
  type = string
}

variable "max_size" {
  type = string
}

variable "desired_capacity" {
  type = string
}

variable "vpc_name" {
  type = string
}

variable "private_subnet_name" {
  type = string
}

variable "public_subnet_name" {
  type        = string
  description = "(optional) describe your variable"
}

variable "engagex_alb_sg" {
  type        = string
  description = "(optional) describe your variable"
}

variable "engagex_instance_sg" {
  type        = string
  description = "(optional) describe your variable"
}

variable "ssl_policy" {
  type        = string
  description = "(optional) describe your variable"
}

variable "certificate_arn" {
  type        = string
  description = "ARN of ACM Certifcate for load balancer"
}

variable "alb_name" {
  type        = string
  description = "(optional) describe your variable"
}

variable "access_logs_bucket" {
  type = string
  description = "S3 Bucket to store the ALB access logs"
}