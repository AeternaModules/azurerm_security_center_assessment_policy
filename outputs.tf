output "security_center_assessment_policies_id" {
  description = "Map of id values across all security_center_assessment_policies, keyed the same as var.security_center_assessment_policies"
  value       = { for k, v in azurerm_security_center_assessment_policy.security_center_assessment_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "security_center_assessment_policies_categories" {
  description = "Map of categories values across all security_center_assessment_policies, keyed the same as var.security_center_assessment_policies"
  value       = { for k, v in azurerm_security_center_assessment_policy.security_center_assessment_policies : k => v.categories if v.categories != null && length(v.categories) > 0 }
}
output "security_center_assessment_policies_description" {
  description = "Map of description values across all security_center_assessment_policies, keyed the same as var.security_center_assessment_policies"
  value       = { for k, v in azurerm_security_center_assessment_policy.security_center_assessment_policies : k => v.description if v.description != null && length(v.description) > 0 }
}
output "security_center_assessment_policies_display_name" {
  description = "Map of display_name values across all security_center_assessment_policies, keyed the same as var.security_center_assessment_policies"
  value       = { for k, v in azurerm_security_center_assessment_policy.security_center_assessment_policies : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "security_center_assessment_policies_implementation_effort" {
  description = "Map of implementation_effort values across all security_center_assessment_policies, keyed the same as var.security_center_assessment_policies"
  value       = { for k, v in azurerm_security_center_assessment_policy.security_center_assessment_policies : k => v.implementation_effort if v.implementation_effort != null && length(v.implementation_effort) > 0 }
}
output "security_center_assessment_policies_name" {
  description = "Map of name values across all security_center_assessment_policies, keyed the same as var.security_center_assessment_policies"
  value       = { for k, v in azurerm_security_center_assessment_policy.security_center_assessment_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "security_center_assessment_policies_remediation_description" {
  description = "Map of remediation_description values across all security_center_assessment_policies, keyed the same as var.security_center_assessment_policies"
  value       = { for k, v in azurerm_security_center_assessment_policy.security_center_assessment_policies : k => v.remediation_description if v.remediation_description != null && length(v.remediation_description) > 0 }
}
output "security_center_assessment_policies_severity" {
  description = "Map of severity values across all security_center_assessment_policies, keyed the same as var.security_center_assessment_policies"
  value       = { for k, v in azurerm_security_center_assessment_policy.security_center_assessment_policies : k => v.severity if v.severity != null && length(v.severity) > 0 }
}
output "security_center_assessment_policies_threats" {
  description = "Map of threats values across all security_center_assessment_policies, keyed the same as var.security_center_assessment_policies"
  value       = { for k, v in azurerm_security_center_assessment_policy.security_center_assessment_policies : k => v.threats if v.threats != null && length(v.threats) > 0 }
}
output "security_center_assessment_policies_user_impact" {
  description = "Map of user_impact values across all security_center_assessment_policies, keyed the same as var.security_center_assessment_policies"
  value       = { for k, v in azurerm_security_center_assessment_policy.security_center_assessment_policies : k => v.user_impact if v.user_impact != null && length(v.user_impact) > 0 }
}

