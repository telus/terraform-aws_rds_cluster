variable "name" {
  description = "DB name you want to use"
}

variable "username" {
  description = "Database username you want to use"
}

variable "password" {
  description = "Database password you want to use"
}

variable "aws_region" {
  description = "Region you want to use"
  default     = "ca-central-1"
}

variable "multi_az" {
  description = "Specifies if the RDS instance is multi-AZ"
  default     = true
}

variable "port" {
  description = "Port number you want to use"
  default     = 3306
}

variable "vpc_security_group_ids" {
  description = "The security_group ids to attach the instance to"
  default     = "sg-caed2fa3"
}

variable "engine" {
  description = "Database engine you want to use"
  default     = "mysql"
}

variable "instance_class" {
  description = "Instance class you want to use"
  default     = "db.m4.large"
}

variable "db_subnet_group_name" {
  description = "The subnet to launch the instance into"
  default     = "rds-main"
}

variable "parameter_group_name" {
  description = "The database parameter group"
  default     = "default.mysql5.7"
}

variable "allocated_storage" {
  description = "The amount of storage you want"
  default     = 10
}

variable "storage_type" {
  description = "The storage type you want to use"
  default     = "gp2"
}

variable "backup_window" {
  description = "The backup window time"
  default     = "09:46-10:16"
}

variable "backup_retention_period" {
  description = "Retention period for backups"
  default     = 7
}

variable "storage_encrypted" {
  description = "Encryption for RDS instance"
  default     = true
}

variable "delete_automated_backups" {
  description = "Delete automated backups when RDS instance is deleted"
  default     = false

