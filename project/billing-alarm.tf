resource "aws_cloudwatch_metric_alarm" "billing_more_than_zero" {
  alarm_name          = "billing-more-than-zero"
  namespace           = "AWS/Billing"
  metric_name         = "EstimatedCharges"
  statistic           = "Maximum"
  period              = 600
  evaluation_periods  = 1
  comparison_operator = "GreaterThanThreshold"
  threshold           = 0
  alarm_description   = "Email when AWS bill is more than $0"
  alarm_actions       = [aws_sns_topic.alerts.arn]
 
  dimensions = {
    Currency = "USD"
  }
}