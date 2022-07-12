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
  default     = "Private"
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

variable "features" {
  type = map(string)
  default = {
    "boards"       = true
    "repositories" = true
    "pipelines"    = true
    "testplans"    = false
    "artifacts"    = false
  }
}
