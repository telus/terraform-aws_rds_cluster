resource "aws_cloudwatch_metric_alarm" "rds_alarm_cpu" {
  alarm_name          = "rds-alarm-cpu-${var.name}"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = "CPUUtilization"
  namespace           = "AWS/RDS"
  period              = 60
  threshold           = var.alarm_threshold_cpu
  statistic           = "Average"
  alarm_actions = [
    var.alarm_sns_topic,
  ]
  ok_actions = [
    var.alarm_sns_topic,
  ]
  dimensions = {
    DBInstanceIdentifier = var.name
  }
}

resource "aws_cloudwatch_metric_alarm" "rds_alarm_memory" {
  alarm_name          = "rds-alarm-memory-${var.name}"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = "DatabaseMemoryUsagePercentage"
  namespace           = "AWS/RDS"
  period              = 60
  threshold           = var.alarm_threshold_memory
  statistic           = "Average"
  alarm_actions = [
    var.alarm_sns_topic,
  ]
  ok_actions = [
    var.alarm_sns_topic,
  ]
  dimensions = {
    DBInstanceIdentifier = var.name
  }
}

resource "aws_cloudwatch_metric_alarm" "rds_alarm_disk_queue_depth" {
  alarm_name          = "rds-alarm-disk-queue-depth-${var.name}"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = "DiskQueueDepth"
  namespace           = "AWS/RDS"
  period              = 600
  threshold           = var.alarm_threshold_disk_queue_depth
  statistic           = "Average"
  alarm_actions = [
    var.alarm_sns_topic,
  ]
  ok_actions = [
    var.alarm_sns_topic,
  ]
  dimensions = {
    DBInstanceIdentifier = var.name
  }
}

resource "aws_cloudwatch_metric_alarm" "rds_alarm_swap" {
  alarm_name          = "rds-alarm-swap-${var.name}"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "SwapUsage"
  namespace           = "AWS/RDS"
  period              = 300
  threshold           = var.alarm_threshold_swap
  statistic           = "Average"
  alarm_actions = [
    var.alarm_sns_topic,
  ]
  ok_actions = [
    var.alarm_sns_topic,
  ]
  dimensions = {
    DBInstanceIdentifier = var.name
  }
}
resource "aws_cloudwatch_metric_alarm" "rds_alarm_freeable_memory" {
  alarm_name          = "rds-alarm-freeable-memory-${var.name}"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = 1
  metric_name         = "FreeableMemory"
  namespace           = "AWS/RDS"
  period              = 300
  threshold           = var.alarm_threshold_freeable_memory
  statistic           = "Average"
  alarm_actions = [
    var.alarm_sns_topic,
  ]
  ok_actions = [
    var.alarm_sns_topic,
  ]
  dimensions = {
    DBInstanceIdentifier = var.name
  }
}
