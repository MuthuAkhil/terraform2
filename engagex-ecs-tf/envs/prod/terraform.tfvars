# AWS Region Configuration
aws_region = "us-east-1"

# ECS Configuration
cluster_name = "engagex-cluster-prod"
app_name = "engagex"
# Networking configuration
vpc_name            = "i2_vpc"
private_subnet_name = "lms_private_subnet_*"
public_subnet_name  = "lms_public_subnet_*"
engagex_instance_sg = "sg-8025f7e6"
engagex_alb_sg      = "sg-f2aa3c95"

# ECR Configuration
ecr_name_production = "engagex-repo-production"

alb_name = "engagex-ecs-prod-alb"
tgname   = "engagex-prod-tg" #Target group

key_name      = "i2_lms"
instance_type = "t3a.small"

# ASG Configuration
min_size         = "2"
max_size         = "4"
desired_capacity = "2"

##  SSL Configuration
certificate_arn = "arn:aws:acm:us-east-1:019619595878:certificate/332f0cf5-4865-445d-88e6-44dfaa96b7af"
ssl_policy      = "ELBSecurityPolicy-2016-08"

health_check_path = "/"
create_module     = "true"

access_logs_bucket = "production-elb-logs.simplilearn.com"