resource "azurerm_key_vault" "MyKeyVault" {
  name                        = "key2219"
  location                    = "westus"
  resource_group_name         = "rg2219"
  enabled_for_disk_encryption = true
  tenant_id                   = "07589b68-dc7f-4b0e-959f-bade4066bcc3"
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"

  access_policy {
    tenant_id = "07589b68-dc7f-4b0e-959f-bade4066bcc3"
    # object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Get",
       "List",
    "Create",
    "Update",
    "Delete",
    "Backup",
    "Restore",
    "Recover",
    "Purge"
    ]

    secret_permissions = [
      "Get",
      "Set",
    "Get",
    "Delete",
    "List"
    ]

    storage_permissions = [
      "Get",
    ]
  }
}