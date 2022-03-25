# terraform-alicloud-acr-personal
Terraform Module for creating Container Registry Personal Edition on Alibaba Cloud.

These types of resources are supported:

* [alicloud_cr_namespace](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cr_namespace)
* [alicloud_cr_repo](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cr_repo)

## Usage

Create a Domain, Receivers and tags.
```hcl
module "example" {
  source             = "terraform-alicloud-modules/acr-personal/alicloud"
  namespace_name     = "your_namespace_name"
  auto_create        = "true"
  default_visibility = "PUBLIC"

  repo_name    = "repo_name"
  repo_summary = "repo_summary"
  repo_type    = "PUBLIC"
  repo_detail  = "repo_detail"
}
```

## Examples

* [complete example](https://github.com/terraform-alicloud-modules/terraform-alicloud-acr-personal/tree/main/examples/complete)

## Terraform versions

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.56.0 |

Authors
-------
Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

License
----
Apache 2 Licensed. See LICENSE for full details.

Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)