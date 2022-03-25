locals {
  namespace_name = var.namespace_name != "" ? var.namespace_name : concat(alicloud_cr_namespace.namespace.*.name, [""])[0]
}

resource "alicloud_cr_namespace" "namespace" {
  count              = var.create_namespace ? 1 : 0
  name               = var.namespace_name
  auto_create        = var.auto_create
  default_visibility = var.default_visibility
}

resource "alicloud_cr_repo" "repo" {
  count     = var.create_repo ? 1 : 0
  namespace = local.namespace_name
  name      = var.repo_name
  summary   = var.repo_summary
  repo_type = var.repo_type
  detail    = var.repo_detail
}