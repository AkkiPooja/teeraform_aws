
#------------------------------------------------------------------------------
# ECS Task Definition
#------------------------------------------------------------------------------
output "aws_ecs_task_definition_aws_ecs_task_arn" {
  description = "Full ARN of the Task Definition (including both family and revision)."
  value       = aws_ecs_task_definition.ecs_task.arn
}



output "aws_ecs_task_definition_aws_ecs_task_family" {
  description = "The family of the Task Definition."
  value       = aws_ecs_task_definition.ecs_task.family
}


output "container_name" {
  description = "Name of the container"
  value       = var.container_name
}
