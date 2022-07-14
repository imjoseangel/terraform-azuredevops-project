# terraform-azuredevops-project

## Deploys a Azure DevOps Project

[![Terraform](https://github.com/imjoseangel/terraform-azuredevops-project/actions/workflows/terraform.yml/badge.svg)](https://github.com/imjoseangel/terraform-azuredevops-project/actions/workflows/terraform.yml)

This Terraform module deploys a Project on Azure DevOps.

### NOTES

* Add Service Connection - Only one so far

## Usage in Terraform 1.0

```terraform
data "azurerm_client_config" "current" {}

module "azuredevops" {
  source = "github.com/imjoseangel/terraform-azuredevops-project"
  name                  = "myproject"
  service_endpoint_name = "myproject-sa"
  tenantid              = "000000ab-bf00-0000-e0ea-000b0e00000a"
  subscription_id       = "00c0eac0-0d0d-0000-0d00-00de000ce000"
  subscription_name     = "subscription-dev"
}
```

## Authors

Originally created by [imjoseangel](http://github.com/imjoseangel)

## License

[MIT](LICENSE)
