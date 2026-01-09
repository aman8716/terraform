resource "aws_ce_anomaly_monitor" "service_monitor" {
  name              = "custom-service-anomaly-monitor"
  monitor_type      = "DIMENSIONAL"
  monitor_dimension = "SERVICE"
}
 
resource "aws_ce_anomaly_subscription" "email_alert" {
  name      = "custom-anomaly-email-subscription"
  frequency = "DAILY"
 
  monitor_arn_list = [
    aws_ce_anomaly_monitor.service_monitor.arn
  ]
 
  threshold_expression {
    dimension {
      key           = "ANOMALY_TOTAL_IMPACT_ABSOLUTE"
      values        = ["0"]
      match_options = ["GREATER_THAN_OR_EQUAL"]
    }
  }
 
  subscriber {
    type    = "EMAIL"
    address = var.alert_email
  }
}
 