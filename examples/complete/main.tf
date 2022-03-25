module "cr_personal" {
  source = "../.."
  #  alicloud_cr_namespace
  create_namespace   = true
  namespace_name     = "module_test_namespace_name"
  auto_create        = var.auto_create
  default_visibility = var.default_visibility

  #  alicloud_cr_repo
  create_repo  = true
  repo_name    = "module_test_repo_name"
  repo_summary = var.repo_summary
  repo_type    = var.repo_type
  repo_detail  = var.repo_detail
}

