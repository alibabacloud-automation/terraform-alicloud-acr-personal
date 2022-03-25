#alicloud_cr_namespace
variable "auto_create" {
  type        = bool
  description = "Boolean, when it set to true, repositories are automatically created when pushing new images. If it set to false, you create repository for images before pushing."
  default     = true
}

variable "default_visibility" {
  type        = string
  description = "PUBLIC or PRIVATE, default repository visibility in this namespace."
  default     = "PUBLIC"
}

#alicloud_cr_repo
variable "repo_summary" {
  type        = string
  description = "The repository general information. It can contain 1 to 80 characters."
  default     = "summary"
}

variable "repo_type" {
  type        = string
  description = "PUBLIC or PRIVATE, repo's visibility."
  default     = "PUBLIC"
}

variable "repo_detail" {
  type        = string
  description = "The repository specific information. MarkDown format is supported, and the length limit is 2000."
  default     = "detail"
}