#------------------------------------------------------------------------------
# ECS SERVICE
#------------------------------------------------------------------------------
variable "ecs_cluster_arn" {
  description = "(Required) Arn of the ECS cluster (up to 255 letters, numbers, hyphens, and underscores)."
}

variable "task_definition_arn" {
  description = "(Required) Arn of the ECS cluster (up to 255 letters, numbers, hyphens, and underscores)."
}

variable "name_prefix" {
  description = "Name prefix for resources on AWS"
  default="demo-ecs"
}

variable "cluster_id" {
  description = "(Required) Arn of the ECS cluster (up to 255 letters, numbers, hyphens, and underscores)."
}

variable "container_definitions" {
  description = "A list of container definitions for the ECS task."
}