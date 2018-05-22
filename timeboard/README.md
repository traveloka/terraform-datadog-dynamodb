terraform-datadog-timeboard-dynamodb
=================

Terraform module to create Datadog Timeboard for DynamoDB.



Usage
-----

```hcl
module "timeboard_dynamodb_beical-app" {
  source         = "github.com/traveloka/terraform-datadog-dynamodb.git//timeboard"
  product_domain = "${var.product_domain}"
  table_name     = "${var.tablename}"
}
```

Terraform Version
-----------------

This module was created using Terraform 0.11.5. 
So to be more safe, Terraform version 0.11.5 or newer is required to use this module.

Authors
-------

* [Karsten Ari Agathon](https://github.com/karstenaa)

License
-------

Apache 2 Licensed. See LICENSE for full details.
