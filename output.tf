output "timeboard_title" {
  value       = "${join(",", datadog_timeboard.dynamodb.*.title)}"
  description = "The title of datadog timeboard for DynamoDB"
}
