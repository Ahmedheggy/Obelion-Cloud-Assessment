variable "environment" {
  description = "Environment name"
  type        = string
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs"
  type        = list(string)
}

variable "database_sg_id" {
  description = "Security Group ID for the database"
  type        = string
}

variable "db_password" {
  description = "Password for the database"
  type        = string
  sensitive   = true
}
