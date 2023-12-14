# AWS Region Configuration
aws_region = "us-east-1"

app_name   = "sheldon-preprod"

# ECS Configuration
cluster_name = "sheldon-cluster-preprod"

# Networking configuration
vpc_name            = "i2_vpc"
private_subnet_name = "lms_private_subnet_*"
public_subnet_name  = "lms_public_subnet_*"
sheldon_instance_sg = "sg-8025f7e6"
sheldon_alb_sg      = "sg-f2aa3c95"

# ECR Configuration
ecr_name_production = "sheldon-repo-preproduction"

alb_name = "sheldon-ecs-preprod-alb"
tgname   = "sheldon-preprod-tg" #Target group

key_name      = "i2_lms"
instance_type = "t3.large"

# ASG Configuration
min_size         = "1"
max_size         = "4"
desired_capacity = "1"

##  SSL Configuration
certificate_arn = "arn:aws:acm:us-east-1:019619595878:certificate/332f0cf5-4865-445d-88e6-44dfaa96b7af"
ssl_policy      = "ELBSecurityPolicy-2016-08"

health_check_path = "/health-check"
create_module     = "true"

