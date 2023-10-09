terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.17"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}

#------------------------------------------------------------------------------
# AWS ECS Task Execution Role
#------------------------------------------------------------------------------
resource "aws_ecs_task_definition" "ecs_task" {
  family                   = "ecs_task"
  network_mode             = "awsvpc"

  container_definitions = jsonencode([
    {
      name  = var.container_name
      image = "${var.account_id}.dkr.ecr.us-east-1.amazonaws.com/${var.ecr_name}:${var.image_tag}"
      portMappings = [
        {
          containerPort =  8080,
          hostPort =  8080
        }
      ],
      memory = 512,
      cpu = 256
    }

  ])
  requires_compatibilities = ["FARGATE"] # Stating that we are using ECS Fargate
  memory                   = 512         # Specifying the memory our container requires
  cpu                      = 256 
  execution_role_arn       = ""
  task_role_arn = ""
}
