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

variable "kms_key_id" {
  description = "KMS Key ID for DB encryption"
  type        = string
}

variable "db_password" {
  description = "Password for the database"
  type        = string
  sensitive   = true
}
