variable "security_center_assessment_policies" {
  description = <<EOT
Map of security_center_assessment_policies, attributes below
Required:
    - description
    - display_name
Optional:
    - categories
    - implementation_effort
    - remediation_description
    - severity
    - threats
    - user_impact
EOT

  type = map(object({
    description             = string
    display_name            = string
    categories              = optional(set(string))
    implementation_effort   = optional(string)
    remediation_description = optional(string)
    severity                = optional(string) # Default: "Medium"
    threats                 = optional(set(string))
    user_impact             = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.security_center_assessment_policies : (
        length(v.description) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.security_center_assessment_policies : (
        length(v.display_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.security_center_assessment_policies : (
        v.remediation_description == null || (length(v.remediation_description) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.security_center_assessment_policies : (
        v.threats == null || (contains(["AccountBreach", "DataExfiltration", "DataSpillage", "MaliciousInsider", "ElevationOfPrivilege", "ThreatResistance", "MissingCoverage", "DenialOfService"], v.threats))
      )
    ])
    error_message = "must be one of: AccountBreach, DataExfiltration, DataSpillage, MaliciousInsider, ElevationOfPrivilege, ThreatResistance, MissingCoverage, DenialOfService"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_security_center_assessment_policy's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: severity
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: categories[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: implementation_effort
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: user_impact
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

