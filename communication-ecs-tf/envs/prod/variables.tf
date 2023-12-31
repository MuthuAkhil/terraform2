variable "cluster_name" {
  type = string
}

variable "aws_region" {
  type = string
}

# variable "profile" {
#   type = string
# }

variable "ecr_name" {
  type    = string
  default = null
}

#variables.tf


variable "health_check_path" {
  default = "/index"
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

variable "tgname" {
  type = string
}
variable "communication_alb_sg" {
  type        = string
  description = "(optional) describe your variable"
}

variable "communication_instance_sg" {
  type        = string
  description = "(optional) describe your variable"
}

variable "ssl_policy" {
  type        = string
  description = "(optional) describe your variable"
}

variable "certificate_arn" {
  type        = string
  description = "(optional) describe your variable"
}

variable "alb_name" {
  type        = string
  description = "(optional) describe your variable"
}

variable "ecr_name_production" {
  type    = string
  default = null
}


variable "app_name" {
  type    = string
  default = null
}

variable "sns_alarm_arn" {
  type = string
  description = "ARN of SNS Topic for Cloudwatch Alarms"
}

variable "response_time_threshold" {
  type = string
  default = "1000"
  description = "Threshold for alarm on response time"
}

variable "access_logs_bucket" {
  type = string
  description = "S3 Bucket to store the ALB access logs"
}

# ASG


variable "health_check_grace_period" {
  type        = number
  description = "Health check Grace Period"
}

variable "default_cooldown" {
  type        = number
  description = "Default cooldown period"
  default     = 300
}

variable "instance_types" {
  type    = list(string)
  default = ["t3.medium", "t3a.medium"]
}

variable "email" {
  type    = string
  default = "devops@simplilearn.net"

}

variable "on_demand_base_capacity" {
  type        = number
  description = "The number of on-demand instances to start."
}

variable "on_demand_percentage_above_base_capacity" {
  type        = number
  description = "The percentage of additional on-demand instances to start, above the on_demand_base_capacity value."
}

variable "instance_sg" {
  type        = list(string)
  description = "Security group for instance"
}