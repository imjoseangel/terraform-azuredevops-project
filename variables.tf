variable "name" {
  description = "Name of the Azure DevOps project"
  type        = string
}

variable "description" {
  description = "Description of the Azure DevOps project"
  default     = "Managed by Terraform"
  type        = string
}

variable "visibility" {
  description = "Visibility of the Azure DevOps project"
  default     = "private"
  type        = string
}

variable "version_control" {
  description = "Version control of the Azure DevOps project"
  default     = "Git"
  type        = string
}

variable "work_item_template" {
  description = "Work item template of the Azure DevOps project"
  default     = "Agile"
  type        = string
}

variable "service_endpoint_name" {
  description = "Name of the Azure DevOps service endpoint"
  default     = "Azure DevOps"
  type        = string
}

variable "tenantid" {
  description = "Tenant ID of the Azure DevOps service endpoint"
  type        = string
}

variable "subscription_id" {
  description = "Subscription ID of the Azure DevOps service endpoint"
  type        = string
}

variable "subscription_name" {
  description = "Subscription name of the Azure DevOps service endpoint"
  type        = string
}

variable "features" {
  type        = map(string)
  description = "Features of the Azure DevOps project"
  default = {
    "boards"       = "enabled"
    "repositories" = "enabled"
    "pipelines"    = "enabled"
    "testplans"    = "disabled"
    "artifacts"    = "disabled"
  }
}
