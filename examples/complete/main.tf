module "aci_pod_setup" {
  source  = "netascode/pod-setup/aci"
  version = ">= 0.0.1"

  id       = 2
  tep_pool = "10.2.0.0/16"
}
