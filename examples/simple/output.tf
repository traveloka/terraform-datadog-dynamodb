output "timeboard_title" {
  value = "${module.dynamodb.timeboard_title}"
}

output "write_capacity_monitor" {
  value = "${module.dynamodb.write_capacity_monitor}"
}

output "read_capacity_monitor" {
  value = "${module.dynamodb.read_capacity_monitor}"
}
