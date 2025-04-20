variable "project" {
  type        = string
  description = "The project name for the VPC"
  default     = "infrastructure"
}

variable "env" {
  type        = string
  description = "The environment (dev or prod)"
  default     = "dev"
}