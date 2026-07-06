output "security_center_assessment_policies" {
  description = "All security_center_assessment_policy resources"
  value       = azurerm_security_center_assessment_policy.security_center_assessment_policies
}
output "security_center_assessment_policies_categories" {
  description = "List of categories values across all security_center_assessment_policies"
  value       = [for k, v in azurerm_security_center_assessment_policy.security_center_assessment_policies : v.categories]
}
output "security_center_assessment_policies_description" {
  description = "List of description values across all security_center_assessment_policies"
  value       = [for k, v in azurerm_security_center_assessment_policy.security_center_assessment_policies : v.description]
}
output "security_center_assessment_policies_display_name" {
  description = "List of display_name values across all security_center_assessment_policies"
  value       = [for k, v in azurerm_security_center_assessment_policy.security_center_assessment_policies : v.display_name]
}
output "security_center_assessment_policies_implementation_effort" {
  description = "List of implementation_effort values across all security_center_assessment_policies"
  value       = [for k, v in azurerm_security_center_assessment_policy.security_center_assessment_policies : v.implementation_effort]
}
output "security_center_assessment_policies_name" {
  description = "List of name values across all security_center_assessment_policies"
  value       = [for k, v in azurerm_security_center_assessment_policy.security_center_assessment_policies : v.name]
}
output "security_center_assessment_policies_remediation_description" {
  description = "List of remediation_description values across all security_center_assessment_policies"
  value       = [for k, v in azurerm_security_center_assessment_policy.security_center_assessment_policies : v.remediation_description]
}
output "security_center_assessment_policies_severity" {
  description = "List of severity values across all security_center_assessment_policies"
  value       = [for k, v in azurerm_security_center_assessment_policy.security_center_assessment_policies : v.severity]
}
output "security_center_assessment_policies_threats" {
  description = "List of threats values across all security_center_assessment_policies"
  value       = [for k, v in azurerm_security_center_assessment_policy.security_center_assessment_policies : v.threats]
}
output "security_center_assessment_policies_user_impact" {
  description = "List of user_impact values across all security_center_assessment_policies"
  value       = [for k, v in azurerm_security_center_assessment_policy.security_center_assessment_policies : v.user_impact]
}

