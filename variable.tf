variable "aws_region" {
  default = "us-east-1"
}


variable "users" {
  description = "Number of users"
  type        = number
  default     = 2
}