#------------------------------------------------------------------------------
# AWS ECS Container Definition Variables
#------------------------------------------------------------------------------
variable "container_name" {
  type        = string
  description = "The name of the container. Up to 255 characters ([a-z], [A-Z], [0-9], -, _ allowed)"
  default="ecs_task"
}

# variable "port_mappings" {
#   description = "The port mappings to configure for the container. This is a list of maps. Each map should contain \"containerPort\", \"hostPort\", and \"protocol\", where \"protocol\" is one of \"tcp\" or \"udp\". If using containers in a task with the awsvpc or host network mode, the hostPort can either be left blank or set to the same value as the containerPort"
#   type = list(object({
#     containerPort = number
#     hostPort      = number
#     protocol      = string
#   }))
#   default = [
#     {
#       containerPort =  8080,
#       hostPort      = 8080
#       protocol      = "tcp"
#     }
#   ]
# }

variable "essential" {
  type        = bool
  description = "Determines whether all other containers in a task are stopped, if this container fails or stops for any reason. Due to how Terraform type casts booleans in json it is required to double quote this value"
  default     = true
}

variable "family" {
  type        = string
  description = "The name of the family"
  default     = null
}




variable "account_id" {
  type        = string
  description = "The value of account id"
  default     = 313778740352
}

variable "ecr_name" {
  type        = string
  description = "The name of the ecr"
  default     = "demo"
}

variable "image_tag" {
  type        = string
  description = "The value of image tag"
  default     = "latest"
}
