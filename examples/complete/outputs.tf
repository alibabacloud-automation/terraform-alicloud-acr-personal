output "namespace_name" {
  description = "The name of the namespace"
  value       = module.cr_personal.namespace_name
}

output "repo_name" {
  description = "The name of the repo"
  value       = module.cr_personal.repo_name
}

output "default_visibility" {
  description = "The default visibility of the repo"
  value       = module.cr_personal.default_visibility
}