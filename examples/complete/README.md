<!-- BEGIN_TF_DOCS -->
# Pod Setup Example

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example will create resources. Resources can be destroyed with `terraform destroy`.

```hcl
module "aci_pod_setup" {
  source  = "netascode/pod-setup/aci"
  version = ">= 0.1.0"

  pod_id   = 2
  tep_pool = "10.2.0.0/16"
}
```
<!-- END_TF_DOCS -->