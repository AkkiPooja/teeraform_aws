variable "name_prefix" {
  description = "Name prefix for resources on AWS"
  default="demo-ecs"
}



variable "essential" {
  type        = bool
  description = "Determines whether all other containers in a task are stopped, if this container fails or stops for any reason. Due to how Terraform type casts booleans in json it is required to double quote this value"
  default     = true
}

variable "family" {
  type        = string
  description = "The name of the family"
  default= "ecs_task"
}

variable "account_id" {
  type        = string
  description = "The value of account id"
  default     = ""
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

