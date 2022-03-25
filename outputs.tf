output "namespace_name" {
  value = concat(alicloud_cr_namespace.namespace.*.name, [""])[0]
}

output "repo_name" {
  value = concat(alicloud_cr_repo.repo.*.name, [""])[0]
}

output "default_visibility" {
  value = concat(alicloud_cr_namespace.namespace.*.default_visibility, [""])[0]
}