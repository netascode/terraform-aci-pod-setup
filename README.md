<!-- BEGIN_TF_DOCS -->
[![Tests](https://github.com/netascode/terraform-aci-pod-setup/actions/workflows/test.yml/badge.svg)](https://github.com/netascode/terraform-aci-pod-setup/actions/workflows/test.yml)

# Terraform ACI Pod Setup Module

Manages ACI Pod Setup

Location in GUI:
`Fabric` » `Inventory` » `Pod Fabric Setup Policy`

## Examples

```hcl
module "aci_pod_setup" {
  source  = "netascode/pod-setup/aci"
  version = ">= 0.0.1"

  pod_id   = 2
  tep_pool = "10.2.0.0/16"
}

```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aci"></a> [aci](#requirement\_aci) | >= 0.2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aci"></a> [aci](#provider\_aci) | >= 0.2.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_pod_id"></a> [pod\_id](#input\_pod\_id) | Pod ID. Minimum value: 1. Maximum value: 255. | `number` | n/a | yes |
| <a name="input_tep_pool"></a> [tep\_pool](#input\_tep\_pool) | TEP pool. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dn"></a> [dn](#output\_dn) | Distinguished name of `fabricSetupP` object. |
| <a name="output_id"></a> [id](#output\_id) | Pod ID. |

## Resources

| Name | Type |
|------|------|
| [aci_rest.fabricSetupP](https://registry.terraform.io/providers/netascode/aci/latest/docs/resources/rest) | resource |
<!-- END_TF_DOCS -->