terraform {
  required_providers {
    test = {
      source = "terraform.io/builtin/test"
    }

    aci = {
      source  = "netascode/aci"
      version = ">=0.2.0"
    }
  }
}

module "main" {
  source = "../.."

  id       = 2
  tep_pool = "10.2.0.0/16"
}

data "aci_rest" "fabricSetupP" {
  dn = "uni/controller/setuppol/setupp-${module.main.id}"

  depends_on = [module.main]
}

resource "test_assertions" "fabricSetupP" {
  component = "fabricSetupP"

  equal "podId" {
    description = "podId"
    got         = data.aci_rest.fabricSetupP.content.podId
    want        = "2"
  }

  equal "podType" {
    description = "podType"
    got         = data.aci_rest.fabricSetupP.content.podType
    want        = "physical"
  }

  equal "tepPool" {
    description = "tepPool"
    got         = data.aci_rest.fabricSetupP.content.tepPool
    want        = "10.2.0.0/16"
  }
}
