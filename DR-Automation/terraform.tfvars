region             = "us-west-1"
vpc_id             = "vpc-0a83095f40194366d"
subnet_ids_public  = ["subnet-0cc2339b08cb8f0a7", "subnet-0f83fd9a2b5cb3d60"]
subnet_ids_private = ["subnet-093e195238393a545", "subnet-04d9da336dd5378c4"]
tg_name            = "hari-tg" #Target group
alb_name           = "hari-test-ALB"
alb_sg             = "sg-054ded1b06697260b" ## ALB Sg name: lms-elb-sg
health_check_path  = "/smplhlthchk_2020ok.php"
ssl_policy         = "ELBSecurityPolicy-2016-08"
certificate_arn    = "arn:aws:acm:us-west-1:249437634744:certificate/169df275-2f2c-4983-bd7f-306d61b66dce"


# ASG Configuration
asg_name                                 = "TestASG"
min_size                                 = "1"
max_size                                 = "4"
desired_capacity                         = "1"
create_module                            = "true"
instance_sg                              = "sg-0e50f2d84f1c3758d" #### Instanc SG name: elb-private-subnet-security3
key_name                                 = "hari-us-west-1"
instance_type                            = "t2.micro"
instance_types                           = ["t3.medium", "t3a.medium"]
on_demand_base_capacity                  = "1"
on_demand_percentage_above_base_capacity = "30"
#ami_id                    = "ami-084f2afec26f8b439"
ami_id                    = "ami-060d3509162bcc386"
instance_profile_arn      = "arn:aws:iam::249437634744:instance-profile/Simpli-Staging-EC2"
health_check_grace_period = 300
default_cooldown          = 200
email                     = "devops@simplilearn.net"

############ DATABASE CONFIGURATIONS 
allocated_storage         = 40
snapshot_identifier       = "localsnap"
storage_type              = "gp3"
engine                    = "mysql"
engine_version            = "5.7.38"
instance_class            = "db.t2.micro"
identifier                = "simpli-qa-i2rds-testing"
vpc_security_group_ids    = ["sg-08c3312256f6e5869"] ## RDS security group name: i2_rds_securitygroup
db_subnet_group_name      = "lms_db_subnet"          ## DB subnetGroup name
final_snapshot_identifier = "localsnap-Final-v1"     ## correction need to be done
port                      = 3306
publicly_accessible       = "true"
skip_final_snapshot       = "true"
