#------------------------------------------------------------------------------
# ECS Cluster
#------------------------------------------------------------------------------
module "ecs-cluster" {
  source  = "./modules/ecs-cluster"
  name = var.name_prefix
}


#------------------------------------------------------------------------------
# ECS Cluster
#------------------------------------------------------------------------------
// create a task for ecs cluster
module "aws_ecs_task" {
  source = "./modules/ecs-fargate-task-defination"
  
  family = var.family
  essential = var.essential
}

#------------------------------------------------------------------------------
# ECS Service
#------------------------------------------------------------------------------

module "ecs_fargate_service" {
  source  = "./modules/ecs-fargate-service"
  name_prefix = var.name_prefix
  cluster_id         = module.ecs-cluster.aws_ecs_cluster_cluster_id  
  ecs_cluster_arn = module.ecs-cluster.aws_ecs_cluster_cluster_arn
  task_definition_arn = module.aws_ecs_task.aws_ecs_task_definition_aws_ecs_task_arn
  container_definitions = jsonencode([
  ])
}

#------------------------------------------------------------------------------
# APPLICATION LOAD BALANCER
#------------------------------------------------------------------------------
module "alb" {
  source    = "./modules/alb"
  alb_name  = var.alb_name
  subnets   = []  # Replace with your subnet IDs
  # security_groups = ["sg-1", "sg-2"]   # Replace with your security group IDs
}





