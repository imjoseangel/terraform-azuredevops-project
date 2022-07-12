# terraform-azuredevops-project

## Deploys a Azure Key Vault. Monitoring support can be added through Azure Log Analytics

[![Terraform](https://github.com/imjoseangel/terraform-azuredevops-project/actions/workflows/terraform.yml/badge.svg)](https://github.com/imjoseangel/terraform-azuredevops-project/actions/workflows/terraform.yml)

This Terraform module deploys a Key Vault on Azure

### NOTES

* None for now

## Usage in Terraform 1.0

```terraform
data "azurerm_client_config" "current" {}

module "azuredevops" {
  source = "github.com/imjoseangel/terraform-azuredevops-project"
  name   = var.tf_name
}
```

## Authors

Originally created by [imjoseangel](http://github.com/imjoseangel)

## License

[MIT](LICENSE)
