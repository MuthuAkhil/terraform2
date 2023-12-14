locals {
  name        = "ecs-communication-app"
  environment = "production"

  # This is the convention we use to know what belongs to each other
  ec2_resources_name = "${local.name}-${local.environment}"
}

# Create ECS Task and instance Role

module "ec2_profile" {
  source = "../../modules/ecs-instance-profile"

  name = local.name

  tags = {
    Environment = local.environment
  }
}

# Define AMI

data "aws_ami" "amazon_linux_ecs" {
  most_recent = true

  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn-ami-*-amazon-ecs-optimized"]
  }

  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }
}

resource "aws_ecs_cluster" "app_ecs_cluster" {
  name = var.cluster_name
}

module "aws-ecs-asg" {
  source = "../../modules/aws-ecs-asg"
  vpc_zone_identifier       = [for s in data.aws_subnet.subnet_values : s.id]
  image_id                  = data.aws_ami.amazon_linux_ecs.id
  iam_instance_profile_name = module.ec2_profile.iam_instance_profile_id

  user_data = templatefile("${path.module}/templates/user-data.sh", {
    cluster_name = var.cluster_name
  })

  name   = var.cluster_name
  max_size                                 = var.max_size
  min_size                                 = var.min_size
  desired_capacity                         = var.desired_capacity
  key_name                                 = var.key_name
  security_groups                          = var.instance_sg
  instance_type                            = var.instance_type
  instance_types                           = var.instance_types
  on_demand_base_capacity                  = var.on_demand_base_capacity
  on_demand_percentage_above_base_capacity = var.on_demand_percentage_above_base_capacity
  health_check_grace_period                = var.health_check_grace_period
  default_cooldown                         = var.default_cooldown
  # ...
}