#-------------------------------
# Local Declarations
#-------------------------------
resource "azuredevops_project" "main" {
  name               = var.name
  description        = var.description
  visibility         = var.visibility
  version_control    = var.version_control
  work_item_template = var.work_item_template

  features = {
    boards       = var.features.boards
    repositories = var.features.repositories
    pipelines    = var.features.pipelines
    testplans    = var.features.testplans
    artifacts    = var.features.artifacts
  }
}
