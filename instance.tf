# Create IAM role for monitoring
resource "aws_iam_role" "enhanced_monitoring" {
  name               = var.name
  assume_role_policy = data.aws_iam_policy_document.enhanced_monitoring.json
}

# Attach Amazon's managed policy for RDS enhanced monitoring
resource "aws_iam_role_policy_attachment" "enhanced_monitoring" {
  role       = aws_iam_role.enhanced_monitoring.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonRDSEnhancedMonitoringRole"
}

# Allow rds to assume this role
data "aws_iam_policy_document" "enhanced_monitoring" {
  statement {
      actions = [
      "sts:AssumeRole",
    ]

    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["monitoring.rds.amazonaws.com"]
    }
  }
}

resource "aws_db_instance" "default" {
  name                                  = var.name
  identifier                            = var.name
  username                              = var.username
  password                              = var.password
  engine                                = var.engine
  instance_class                        = var.instance_class
  multi_az                              = var.multi_az
  port                                  = var.port
  vpc_security_group_ids                = [var.vpc_security_group_ids]
  db_subnet_group_name                  = var.db_subnet_group_name
  parameter_group_name                  = var.parameter_group_name
  allocated_storage                     = var.allocated_storage
  storage_type                          = var.storage_type
  backup_window                         = var.backup_window
  backup_retention_period               = var.backup_retention_period
  storage_encrypted                     = var.storage_encrypted
  delete_automated_backups              = var.delete_automated_backups
  final_snapshot_identifier             = "${var.name}-final-snapshot"
  deletion_protection                   = var.deletion_protection
  monitoring_interval                   = var.monitoring_interval
  monitoring_role_arn                   = aws_iam_role.enhanced_monitoring.arn
  performance_insights_enabled          = var.performance_insights_enabled
  performance_insights_retention_period = var.performance_insights_enabled == true ? var.performance_insights_retention_period : null

  lifecycle {
    ignore_changes = [password]
  }
}
