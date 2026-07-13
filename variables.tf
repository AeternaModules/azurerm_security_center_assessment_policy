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
    severity                = optional(string)
    threats                 = optional(set(string))
    user_impact             = optional(string)
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_security_center_assessment_policy's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: description
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: display_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: severity
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: categories[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: implementation_effort
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: remediation_description
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: threats[*]
  #   condition: contains(["AccountBreach", "DataExfiltration", "DataSpillage", "MaliciousInsider", "ElevationOfPrivilege", "ThreatResistance", "MissingCoverage", "DenialOfService"], value)
  #   message:   must be one of: AccountBreach, DataExfiltration, DataSpillage, MaliciousInsider, ElevationOfPrivilege, ThreatResistance, MissingCoverage, DenialOfService
  # path: user_impact
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

