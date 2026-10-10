output "apigatewayv2_authorizers_id" {
  description = "Map of id values across all apigatewayv2_authorizers, keyed the same as var.apigatewayv2_authorizers"
  value       = { for k, v in aws_apigatewayv2_authorizer.apigatewayv2_authorizers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apigatewayv2_authorizers_api_id" {
  description = "Map of api_id values across all apigatewayv2_authorizers, keyed the same as var.apigatewayv2_authorizers"
  value       = { for k, v in aws_apigatewayv2_authorizer.apigatewayv2_authorizers : k => v.api_id if v.api_id != null && length(v.api_id) > 0 }
}
output "apigatewayv2_authorizers_authorizer_credentials_arn" {
  description = "Map of authorizer_credentials_arn values across all apigatewayv2_authorizers, keyed the same as var.apigatewayv2_authorizers"
  value       = { for k, v in aws_apigatewayv2_authorizer.apigatewayv2_authorizers : k => v.authorizer_credentials_arn if v.authorizer_credentials_arn != null && length(v.authorizer_credentials_arn) > 0 }
}
output "apigatewayv2_authorizers_authorizer_payload_format_version" {
  description = "Map of authorizer_payload_format_version values across all apigatewayv2_authorizers, keyed the same as var.apigatewayv2_authorizers"
  value       = { for k, v in aws_apigatewayv2_authorizer.apigatewayv2_authorizers : k => v.authorizer_payload_format_version if v.authorizer_payload_format_version != null && length(v.authorizer_payload_format_version) > 0 }
}
output "apigatewayv2_authorizers_authorizer_result_ttl_in_seconds" {
  description = "Map of authorizer_result_ttl_in_seconds values across all apigatewayv2_authorizers, keyed the same as var.apigatewayv2_authorizers"
  value       = { for k, v in aws_apigatewayv2_authorizer.apigatewayv2_authorizers : k => v.authorizer_result_ttl_in_seconds if v.authorizer_result_ttl_in_seconds != null }
}
output "apigatewayv2_authorizers_authorizer_type" {
  description = "Map of authorizer_type values across all apigatewayv2_authorizers, keyed the same as var.apigatewayv2_authorizers"
  value       = { for k, v in aws_apigatewayv2_authorizer.apigatewayv2_authorizers : k => v.authorizer_type if v.authorizer_type != null && length(v.authorizer_type) > 0 }
}
output "apigatewayv2_authorizers_authorizer_uri" {
  description = "Map of authorizer_uri values across all apigatewayv2_authorizers, keyed the same as var.apigatewayv2_authorizers"
  value       = { for k, v in aws_apigatewayv2_authorizer.apigatewayv2_authorizers : k => v.authorizer_uri if v.authorizer_uri != null && length(v.authorizer_uri) > 0 }
}
output "apigatewayv2_authorizers_enable_simple_responses" {
  description = "Map of enable_simple_responses values across all apigatewayv2_authorizers, keyed the same as var.apigatewayv2_authorizers"
  value       = { for k, v in aws_apigatewayv2_authorizer.apigatewayv2_authorizers : k => v.enable_simple_responses if v.enable_simple_responses != null }
}
output "apigatewayv2_authorizers_identity_sources" {
  description = "Map of identity_sources values across all apigatewayv2_authorizers, keyed the same as var.apigatewayv2_authorizers"
  value       = { for k, v in aws_apigatewayv2_authorizer.apigatewayv2_authorizers : k => v.identity_sources if v.identity_sources != null && length(v.identity_sources) > 0 }
}
output "apigatewayv2_authorizers_jwt_configuration" {
  description = "Map of jwt_configuration values across all apigatewayv2_authorizers, keyed the same as var.apigatewayv2_authorizers"
  value       = { for k, v in aws_apigatewayv2_authorizer.apigatewayv2_authorizers : k => one(v.jwt_configuration) if v.jwt_configuration != null && length(v.jwt_configuration) > 0 }
}
output "apigatewayv2_authorizers_name" {
  description = "Map of name values across all apigatewayv2_authorizers, keyed the same as var.apigatewayv2_authorizers"
  value       = { for k, v in aws_apigatewayv2_authorizer.apigatewayv2_authorizers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "apigatewayv2_authorizers_region" {
  description = "Map of region values across all apigatewayv2_authorizers, keyed the same as var.apigatewayv2_authorizers"
  value       = { for k, v in aws_apigatewayv2_authorizer.apigatewayv2_authorizers : k => v.region if v.region != null && length(v.region) > 0 }
}

