variable "enabled" {
  type        = "string"
  default     = true
  description = "To enable this module"
}

variable "product_domain" {
  type        = "string"
  description = "The name of the product domain"
}

variable "service" {
  type        = "string"
  description = "The name of the service"
}

variable "table_name" {
  type        = "string"
  description = "The name of the DynamoDB Table"
}

variable "environment" {
  type        = "string"
  default     = "*"
  description = "The name of the environment"
}

variable "tags" {
  type        = "list"
  default     = []
  description = "Additional tags for monitors"
}

variable "recipients" {
  type        = "list"
  default     = []
  description = "Notification recipients when both alert and warning are triggered"
}

variable "alert_recipients" {
  type        = "list"
  default     = []
  description = "Notification recipients when only alert is triggered"
}

variable "warning_recipients" {
  type        = "list"
  default     = []
  description = "Notification recipients when only warning is triggered"
}

variable "renotify_interval" {
  type        = "string"
  default     = "0"
  description = "Time interval in minutes which escalation_message will be sent when monitor is triggered"
}

variable "notify_audit" {
  type        = "string"
  default     = false
  description = "Whether any configuration changes should be notified"
}

variable "read_capacity_threshold" {
  type = "map"
  default = {
    ok                = 60
    warning           = 70
    warning_recovery  = 65
    critical          = 80
    critical_recovery = 75
  }
  description = "Thresholds of used read capacity percentage"
}

variable "read_capacity_message" {
  type        = "string"
  default     = ""
  description = "Message when there is an alert regarding read capacity"
}

variable "read_capacity_escalation_message" {
  type        = "string"
  default     = ""
  description = "Escalation message for read capacity alert"
}


variable "write_capacity_threshold" {
  type = "map"
  default = {
    ok                = 60
    warning           = 70
    warning_recovery  = 65
    critical          = 80
    critical_recovery = 75
  }
  description = "Thresholds of used write capacity percentage"
}

variable "write_capacity_message" {
  type        = "string"
  default     = ""
  description = "Message when there is an alert regarding write capacity"
}

variable "write_capacity_escalation_message" {
  type        = "string"
  default     = ""
  description = "Escalation message for write capacity alert"
}
