module "dynamodb" {
  source         = "../../"
  product_domain = "BEI"
  service        = "beical"
  table_name     = "beical-table"
  environment    = "production"

  recipients        = ["slack-bei", "pagerduty-bei", "bei@traveloka.com"]
  renotify_interval = 0
  notify_audit      = false
}
