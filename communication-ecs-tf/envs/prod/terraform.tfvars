# AWS Region Configuration
aws_region = "us-east-1"

app_name   = "communication"

# ECS Configuration
cluster_name = "communication-cluster-prod"

# Networking configuration
vpc_name            = "i2_vpc"
private_subnet_name = "lms_private_subnet_*"
public_subnet_name  = "lms_public_subnet_*"
communication_instance_sg = "sg-8025f7e6"
communication_alb_sg      = "sg-f2aa3c95"

# ECR Configuration
ecr_name_production = "communication-repo-production"

alb_name = "communication-ecs-prod-alb"
tgname   = "communication-prod-tg" #Target group

key_name      = "i2_lms"
instance_type = "t3.medium"
instance_sg   = ["sg-8025f7e6"]


# ASG Configuration
min_size                                 = "1"
max_size                                 = "2"
desired_capacity                         = "1"
instance_types                           = ["t3a.medium", "t3.medium"]
on_demand_base_capacity                  = "1"
on_demand_percentage_above_base_capacity = "30"
health_check_grace_period                = 300
default_cooldown                         = 200
email                                    = "devops@simplilearn.net"

##  SSL Configuration
certificate_arn = "arn:aws:acm:us-east-1:019619595878:certificate/332f0cf5-4865-445d-88e6-44dfaa96b7af"
ssl_policy      = "ELBSecurityPolicy-2016-08"

health_check_path = "/"
create_module     = "true"

sns_alarm_arn   = "arn:aws:sns:us-east-1:019619595878:Techalpha-group"

access_logs_bucket = "production-elb-logs.simplilearn.com"