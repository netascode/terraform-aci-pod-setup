output "dn" {
  value       = aci_rest.fabricSetupP.id
  description = "Distinguished name of `fabricSetupP` object."
}

output "id" {
  value       = aci_rest.fabricSetupP.content.podId
  description = "Pod ID."
}
