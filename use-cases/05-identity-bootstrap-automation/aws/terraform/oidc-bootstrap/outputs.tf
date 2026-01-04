# TODO: output role_arn and audience/subject patterns
output "role_arn" {
  description = "IAM Role ARN to use in GitHub Actions."
  value       = aws_iam_role.github_actions.arn
}

output "oidc_provider_arn" {
  description = "OIDC provider ARN."
  value       = aws_iam_openid_connect_provider.github.arn
}

output "allowed_subjects" {
  description = "The subject claim patterns allowed to assume this role."
  value       = local.subjects
}
