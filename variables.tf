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
  default = "ca-central-1"
}

variable "availability_zone" {
  description = "Availability zone you want to use"
  default = "ca-central-1a"
}

variable "multi_az" {
  description = "Specifies if the RDS instance is multi-AZ"
  default = "yes"
}

variable "port" {
  description = "Port number you want to use"
  default = 3306
}

variable "engine" {
  description = "Database engine you want to use"
  default = "mysql"
}

variable "engine_version" {
  description = "Engine version you want to use"
  default = "5.7.17"
}

variable "instance_class" {
  description = "Instance class you want to use"
  default = "db.m4.large"
}

variable "vpc_security_group_ids" {
  description = "The security_group ids to attach the instance to"
}

variable "db_subnet_group_name" {
  description = "The subnet to launch the instance into"
  default = "rds-main"
}

variable "parameter_group_name" {
  description = "The database parameter group"
  default = "default.mysql5.7"
}

variable "allocated_storage" {
  description = "The amount of storage you want"
  default = 10
}
