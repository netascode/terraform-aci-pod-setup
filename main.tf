resource "aci_rest" "fabricSetupP" {
  dn         = "uni/controller/setuppol/setupp-${var.pod_id}"
  class_name = "fabricSetupP"
  content = {
    podId   = var.pod_id
    podType = "physical"
    tepPool = var.tep_pool
  }
}
