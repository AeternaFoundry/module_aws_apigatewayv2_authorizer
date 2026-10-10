variable "apigatewayv2_authorizers" {
  description = <<EOT
Map of apigatewayv2_authorizers, attributes below
Required:
    - api_id
    - authorizer_type
    - name
Optional:
    - authorizer_credentials_arn
    - authorizer_payload_format_version
    - authorizer_result_ttl_in_seconds
    - authorizer_uri
    - enable_simple_responses
    - identity_sources
    - region
    - jwt_configuration (block):
        - audience (optional)
        - issuer (optional)
EOT

  type = map(object({
    api_id                            = string
    authorizer_type                   = string
    name                              = string
    authorizer_credentials_arn        = optional(string)
    authorizer_payload_format_version = optional(string)
    authorizer_result_ttl_in_seconds  = optional(number)
    authorizer_uri                    = optional(string)
    enable_simple_responses           = optional(bool)
    identity_sources                  = optional(set(string))
    region                            = optional(string)
    jwt_configuration = optional(object({
      audience = optional(set(string))
      issuer   = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.apigatewayv2_authorizers : (
        v.authorizer_payload_format_version == null || (contains(["1.0", "2.0"], v.authorizer_payload_format_version))
      )
    ])
    error_message = "must be one of: 1.0, 2.0"
  }
  validation {
    condition = alltrue([
      for k, v in var.apigatewayv2_authorizers : (
        v.authorizer_result_ttl_in_seconds == null || (v.authorizer_result_ttl_in_seconds >= 0 && v.authorizer_result_ttl_in_seconds <= 3600)
      )
    ])
    error_message = "must be between 0 and 3600"
  }
  validation {
    condition = alltrue([
      for k, v in var.apigatewayv2_authorizers : (
        v.authorizer_uri == null || (length(v.authorizer_uri) >= 1 && length(v.authorizer_uri) <= 2048)
      )
    ])
    error_message = "must be between 1 and 2048 characters"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

