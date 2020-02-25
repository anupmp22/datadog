provider "datadog" {
  api_key = "${var.DATADOG_API_KEY}"
  app_key = "${var.DATADOG_APP_KEY}"
}
resource "datadog_dashboard" "ordered_dashboard" {
  title         = "Ordered Layout Dashboard_cng"
  description   = "Created using the Datadog provider in Terraform"
  layout_type   = "ordered"
  is_read_only  = true


widget {
    timeseries_definition {
      request {
        q = "avg:system.cpu.user{*}"
      }
      title = "CPU used"
      time = { time = "4h" }
    }

}
 

widget {
    timeseries_definition {
      request {
        q = "avg:system.mem.used{*}"
      }
      title = "Memory used"
      time = { time = "4h" }
     }
 }
}
