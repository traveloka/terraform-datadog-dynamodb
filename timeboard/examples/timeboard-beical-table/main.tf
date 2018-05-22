module "timeboard_dynamodb_beical-table" {
  source         = "../../"
  product_domain = "BEI"
  table_name     = "beical-table"
}
