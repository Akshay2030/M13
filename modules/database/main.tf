resource "azurerm_sql_server" "primary" {
    name = "m13sqlserver2021"
    resource_group_name = var.resource_group
    location = var.location
    version  = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"
}

resource "azurerm_sql_database" "db" {
  name                = "db285"
  resource_group_name = var.resource_group
  location            = var.location
  server_name         = azurerm_sql_server.primary.name
}