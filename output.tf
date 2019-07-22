output "timeboard_title" {
  value       = "${join(",", datadog_timeboard.dynamodb.*.title)}"
  description = "The title of datadog timeboard for DynamoDB"
}

output "write_capacity_monitor" {
  value       = "${module.monitor_write_capacity.name}"
  description = "Name of write capacity monitor"
}

output "read_capacity_monitor" {
  value       = "${module.monitor_read_capacity.name}"
  description = "Name of read capacity monitor"
}
