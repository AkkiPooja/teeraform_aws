#------------------------------------------------------------------------------
# APPLICATION LOADBALANCER
#------------------------------------------------------------------------------
output "aws_load_balancer_arn" {
  description = "The arn of the load balancer"
  value       = aws_alb.app_alb.arn
}
