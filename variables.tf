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
        v.threats == null || (alltrue([for x in v.threats : contains(["AccountBreach", "DataExfiltration", "DataSpillage", "MaliciousInsider", "ElevationOfPrivilege", "ThreatResistance", "MissingCoverage", "DenialOfService"], x)]))
      )
    ])
    error_message = "must be one of: AccountBreach, DataExfiltration, DataSpillage, MaliciousInsider, ElevationOfPrivilege, ThreatResistance, MissingCoverage, DenialOfService"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

