locals {
  monitor_enabled = "${var.enabled && length(var.recipients) > 0 ? 1 : 0}"
}

resource "datadog_timeboard" "dynamodb" {
  title       = "${var.product_domain} - ${var.table_name} - ${var.environment} - DynamoDB"
  description = "A generated timeboard for DynamoDB"

  template_variable {
    default = "${var.table_name}"
    name    = "table_name"
    prefix  = "tablename"
  }

  template_variable {
    default = "${var.environment}"
    name    = "environment"
    prefix  = "environment"
  }

  graph {
    title     = "Conditional Check Failed Requests"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.dynamodb.conditional_check_failed_requests{$table_name, $environment} by {tablename}.as_count()"
      type = "line"
    }
  }

  graph {
    title     = "Consumed Read Capacity Units"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.dynamodb.consumed_read_capacity_units{$table_name, $environment} by {tablename, globalsecondaryindexname}"
      type = "line"
    }
  }

  graph {
    title     = "Consumed Write Capacity Units"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.dynamodb.consumed_write_capacity_units{$table_name, $environment} by {tablename, globalsecondaryindexname}"
      type = "line"
    }
  }

  graph {
    title     = "Provisioned Read Capacity Units"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.dynamodb.provisioned_read_capacity_units{$table_name, $environment} by {tablename, globalsecondaryindexname}"
      type = "line"
    }
  }

  graph {
    title     = "Provisioned Write Capacity Units"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.dynamodb.provisioned_write_capacity_units{$table_name, $environment} by {tablename, globalsecondaryindexname}"
      type = "line"
    }
  }

  graph {
    title     = "Returned Item Count"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.dynamodb.returned_item_count{$table_name, $environment} by {tablename}"
      type = "line"
    }

    request {
      q    = "avg:aws.dynamodb.returned_item_count.sum{$table_name, $environment} by {tablename}.as_count()"
      type = "line"
    }

    request {
      q    = "avg:aws.dynamodb.returned_item_count.maximum{$table_name, $environment} by {tablename}"
      type = "line"
    }

    request {
      q    = "avg:aws.dynamodb.returned_item_count.minimum{$table_name, $environment} by {tablename}"
      type = "line"
    }

    request {
      q    = "avg:aws.dynamodb.returned_item_count.samplecount{$table_name, $environment} by {tablename}.as_count()"
      type = "line"
    }
  }

  graph {
    title     = "Successful Request Latency"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.dynamodb.successful_request_latency{$table_name, $environment} by {tablename, operation}"
      type = "line"
    }

    request {
      q    = "avg:aws.dynamodb.successful_request_latency.maximum{$table_name, $environment} by {tablename, operation}"
      type = "line"
    }

    request {
      q    = "avg:aws.dynamodb.successful_request_latency.samplecount{$table_name, $environment} by {tablename, operation}.as_count()"
      type = "line"
    }
  }

  graph {
    title     = "User Errors"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.dynamodb.user_errors{$table_name, $environment}.as_count()"
      type = "line"
    }
  }

  graph {
    title     = "Table Size"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.dynamodb.table_size{$table_name, $environment} by {tablename}.as_count()"
      type = "line"
    }
  }

  graph {
    title     = "Item Count"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.dynamodb.item_count{$table_name, $environment} by {tablename}.as_count()"
      type = "line"
    }
  }
}
