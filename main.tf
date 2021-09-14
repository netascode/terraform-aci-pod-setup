resource "aci_rest" "fabricSetupP" {
  dn         = "uni/controller/setuppol/setupp-${var.id}"
  class_name = "fabricSetupP"
  content = {
    podId   = var.id
    podType = "physical"
    tepPool = var.tep_pool
  }
}
