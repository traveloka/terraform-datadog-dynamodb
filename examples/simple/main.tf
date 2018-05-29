module "dynamodb" {
  source         = "../../"
  product_domain = "BEI"
  service        = "beical"
  table_name     = "beical-table"
  environment    = "production"

  recipients = ["slack-bei", "pagerduty-bei", "bei@traveloka.com"]
}
