# terraform-alicloud-acr-personal
Terraform Module for creating Container Registry Personal Edition on Alibaba Cloud.

These types of resources are supported:

* [alicloud_cr_namespace](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cr_namespace)
* [alicloud_cr_repo](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cr_repo)

## Usage

<div style="display: block;margin-bottom: 40px;"><div class="oics-button" style="float: right;position: absolute;margin-bottom: 10px;">
  <a href="https://api.aliyun.com/terraform?source=Module&activeTab=document&sourcePath=terraform-alicloud-modules%3A%3Aacr-personal&spm=docs.m.terraform-alicloud-modules.acr-personal&intl_lang=EN_US" target="_blank">
    <img alt="Open in AliCloud" src="https://img.alicdn.com/imgextra/i1/O1CN01hjjqXv1uYUlY56FyX_!!6000000006049-55-tps-254-36.svg" style="max-height: 44px; max-width: 100%;">
  </a>
</div></div>


Create a Domain, Receivers and tags.

```hcl
module "example" {
  source             = "terraform-alicloud-modules/acr-personal/alicloud"
  create_namespace   = true
  namespace_name     = "your_namespace_name"
  auto_create        = "true"
  default_visibility = "PUBLIC"

  create_repo  = true
  repo_name    = "repo_name"
  repo_summary = "repo_summary"
  repo_type    = "PUBLIC"
  repo_detail  = "repo_detail"
}
```

## Examples

* [complete example](https://github.com/terraform-alicloud-modules/terraform-alicloud-acr-personal/tree/main/examples/complete)


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.212.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | >= 1.212.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [alicloud_cr_namespace.namespace](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cr_namespace) | resource |
| [alicloud_cr_repo.repo](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cr_repo) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_create"></a> [auto\_create](#input\_auto\_create) | Boolean, when it set to true, repositories are automatically created when pushing new images. If it set to false, you create repository for images before pushing. | `bool` | `null` | no |
| <a name="input_create_namespace"></a> [create\_namespace](#input\_create\_namespace) | Whether to create the alicloud\_cr\_namespace | `bool` | `false` | no |
| <a name="input_create_repo"></a> [create\_repo](#input\_create\_repo) | Whether to create the alicloud\_cr\_repo | `bool` | `false` | no |
| <a name="input_default_visibility"></a> [default\_visibility](#input\_default\_visibility) | PUBLIC or PRIVATE, default repository visibility in this namespace. | `string` | `"PRIVATE"` | no |
| <a name="input_namespace_name"></a> [namespace\_name](#input\_namespace\_name) | Name of Container Registry namespace. | `string` | `null` | no |
| <a name="input_repo_detail"></a> [repo\_detail](#input\_repo\_detail) | The repository specific information. MarkDown format is supported, and the length limit is 2000. | `string` | `null` | no |
| <a name="input_repo_name"></a> [repo\_name](#input\_repo\_name) | Name of container registry repository. | `string` | `null` | no |
| <a name="input_repo_summary"></a> [repo\_summary](#input\_repo\_summary) | The repository general information. It can contain 1 to 80 characters. | `string` | `null` | no |
| <a name="input_repo_type"></a> [repo\_type](#input\_repo\_type) | PUBLIC or PRIVATE, repo's visibility. | `string` | `"PRIVATE"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_default_visibility"></a> [default\_visibility](#output\_default\_visibility) | The default visibility of repo. |
| <a name="output_namespace_name"></a> [namespace\_name](#output\_namespace\_name) | The name of cr namespace. |
| <a name="output_repo_name"></a> [repo\_name](#output\_repo\_name) | The name of repo. |
<!-- END_TF_DOCS -->


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