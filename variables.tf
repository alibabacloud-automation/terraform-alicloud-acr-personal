variable "create_namespace" {
  type        = bool
  description = "Whether to create the alicloud_cr_namespace"
  default     = false
}

variable "create_repo" {
  type        = bool
  description = "Whether to create the alicloud_cr_repo"
  default     = false
}

#alicloud_cr_namespace
variable "namespace_name" {
  type        = string
  description = "Name of Container Registry namespace."
  default     = null
}

variable "auto_create" {
  type        = bool
  description = "Boolean, when it set to true, repositories are automatically created when pushing new images. If it set to false, you create repository for images before pushing."
  default     = null
}

variable "default_visibility" {
  type        = string
  description = "PUBLIC or PRIVATE, default repository visibility in this namespace."
  default     = "PRIVATE"
}

#alicloud_cr_repo
variable "repo_name" {
  type        = string
  description = "Name of container registry repository."
  default     = null
}

variable "repo_summary" {
  type        = string
  description = "The repository general information. It can contain 1 to 80 characters."
  default     = null
}

variable "repo_type" {
  type        = string
  description = "PUBLIC or PRIVATE, repo's visibility."
  default     = "PRIVATE"
}

variable "repo_detail" {
  type        = string
  description = "The repository specific information. MarkDown format is supported, and the length limit is 2000."
  default     = null
}






