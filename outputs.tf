output "namespace_name" {
  description = "The name of cr namespace."
  value       = concat(alicloud_cr_namespace.namespace[*].name, [""])[0]
}

output "repo_name" {
  description = "The name of repo."
  value       = concat(alicloud_cr_repo.repo[*].name, [""])[0]
}

output "default_visibility" {
  description = "The default visibility of repo."
  value       = concat(alicloud_cr_namespace.namespace[*].default_visibility, [""])[0]
}