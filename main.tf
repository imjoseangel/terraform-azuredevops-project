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

resource "azuredevops_serviceendpoint_azurerm" "mainazurerm" {
  project_id                = azuredevops_project.main.id
  service_endpoint_name     = var.serviceendpoint.service_endpoint_name
  description               = var.serviceendpoint.description
  azurerm_spn_tenantid      = var.serviceendpoint.tenantid
  azurerm_subscription_id   = var.serviceendpoint.subscription_id
  azurerm_subscription_name = var.serviceendpoint.subscription_name
}
