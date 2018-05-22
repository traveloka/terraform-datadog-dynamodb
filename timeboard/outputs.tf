output "title" {
  value       = "${datadog_timeboard.dynamodb.title}"
  description = "The title of datadog timeboard for DynamoDB"
}
