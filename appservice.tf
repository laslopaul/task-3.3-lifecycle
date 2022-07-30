# Create App Service Plan
resource "azurerm_app_service_plan" "default" {
  name                = "asp-task413-itra"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  sku {
    tier = "Free"
    size = "F1"
  }
}

# Create App Service
resource "azurerm_app_service" "default" {
  name                = "laslopaul-gitlab-test"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.default.id
}
