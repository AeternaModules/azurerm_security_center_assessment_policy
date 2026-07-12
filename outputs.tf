output "security_center_assessment_policies_categories" {
  description = "Map of categories values across all security_center_assessment_policies, keyed the same as var.security_center_assessment_policies"
  value       = { for k, v in azurerm_security_center_assessment_policy.security_center_assessment_policies : k => v.categories }
}
output "security_center_assessment_policies_description" {
  description = "Map of description values across all security_center_assessment_policies, keyed the same as var.security_center_assessment_policies"
  value       = { for k, v in azurerm_security_center_assessment_policy.security_center_assessment_policies : k => v.description }
}
output "security_center_assessment_policies_display_name" {
  description = "Map of display_name values across all security_center_assessment_policies, keyed the same as var.security_center_assessment_policies"
  value       = { for k, v in azurerm_security_center_assessment_policy.security_center_assessment_policies : k => v.display_name }
}
output "security_center_assessment_policies_implementation_effort" {
  description = "Map of implementation_effort values across all security_center_assessment_policies, keyed the same as var.security_center_assessment_policies"
  value       = { for k, v in azurerm_security_center_assessment_policy.security_center_assessment_policies : k => v.implementation_effort }
}
output "security_center_assessment_policies_name" {
  description = "Map of name values across all security_center_assessment_policies, keyed the same as var.security_center_assessment_policies"
  value       = { for k, v in azurerm_security_center_assessment_policy.security_center_assessment_policies : k => v.name }
}
output "security_center_assessment_policies_remediation_description" {
  description = "Map of remediation_description values across all security_center_assessment_policies, keyed the same as var.security_center_assessment_policies"
  value       = { for k, v in azurerm_security_center_assessment_policy.security_center_assessment_policies : k => v.remediation_description }
}
output "security_center_assessment_policies_severity" {
  description = "Map of severity values across all security_center_assessment_policies, keyed the same as var.security_center_assessment_policies"
  value       = { for k, v in azurerm_security_center_assessment_policy.security_center_assessment_policies : k => v.severity }
}
output "security_center_assessment_policies_threats" {
  description = "Map of threats values across all security_center_assessment_policies, keyed the same as var.security_center_assessment_policies"
  value       = { for k, v in azurerm_security_center_assessment_policy.security_center_assessment_policies : k => v.threats }
}
output "security_center_assessment_policies_user_impact" {
  description = "Map of user_impact values across all security_center_assessment_policies, keyed the same as var.security_center_assessment_policies"
  value       = { for k, v in azurerm_security_center_assessment_policy.security_center_assessment_policies : k => v.user_impact }
}

