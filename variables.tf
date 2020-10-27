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
}

variable "deletion_protection" {
  description = "Set deletion protection on the instance"
  default     = true
}

variable "monitoring_interval" {
  description = "The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance."
  default     = 30
}

variable "performance_insights_enabled" {
  description = "Specifies whether Performance Insights are enabled"
  type        = bool
  default     = false
}

variable "performance_insights_retention_period" {
  description = "The amount of time in days to retain Performance Insights data"
  default     = 7
}

variable "alarm_threshold_cpu" {
  description = "Threshold for cpu alarm in %"
  type        = number
  default     = 80
}

variable "alarm_threshold_memory" {
  description = "Memory in percent"
  type        = number
  default     = 80
}

variable "alarm_threshold_disk_queue_depth" {
  description = "Threshold for disk queue depth alarm"
  type        = number
  default     = 0
}

variable "alarm_threshold_swap" {
  description = "Threshold for swap alarm"
  type        = number
  default     = 0
}

variable "alarm_sns_topic" {
  description = "SNS Topic used for alarms"
  default     = "arn:aws:sns:ca-central-1:202758669767:db_alarms" # Configured in DataVPC repo: https://github.com/telus/terraform-openshift-datavpc-main/blob/master/aws-sns-alarms.tf
}