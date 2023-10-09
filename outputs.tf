#------------------------------------------------------------------------------
# ECS CLUSTER
#------------------------------------------------------------------------------
output "aws_ecs_cluster_cluster_name" {
  description = "The name of the cluster"
  value       = module.ecs-cluster.aws_ecs_cluster_cluster_name
}

output "aws_ecs_cluster_cluster_id" {
  description = "The Amazon ID that identifies the cluster"
  value       = module.ecs-cluster.aws_ecs_cluster_cluster_id
}

output "aws_ecs_cluster_cluster_arn" {
  description = "The Amazon Resource Name (ARN) that identifies the cluster"
  value       = module.ecs-cluster.aws_ecs_cluster_cluster_arn
}

output "aws_ecs_task_definition_aws_ecs_task_arn" {
  description = "The arn of aws ecs task"
  value       = module.aws_ecs_task.aws_ecs_task_definition_aws_ecs_task_arn
}
