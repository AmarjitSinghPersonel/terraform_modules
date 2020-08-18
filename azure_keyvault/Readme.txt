Create a keyvault in Azure Portal.

azurerm_key_vault resource is used for creating Key Vault

Note: Terraform will automatically recover a soft-deleted Key Vault during Creation if one is found - you can opt out of this using the features block within the Provider block.

Latest Update:
Note: Once Purge Protection has been Enabled it's not possible to Disable it. Support for disabling purge protection is being tracked in this Azure API issue. Deleting the Key Vault with Purge Protection Enabled will schedule the Key Vault to be deleted (which will happen by Azure in the configured number of days, currently 90 days - which will be configurable in Terraform in the future).

Timeouts
The timeouts block allows you to specify timeouts for certain actions:

create - (Defaults to 30 minutes) Used when creating the Key Vault.
update - (Defaults to 30 minutes) Used when updating the Key Vault.
read - (Defaults to 5 minutes) Used when retrieving the Key Vault.
delete - (Defaults to 30 minutes) Used when deleting the Key Vault.

Import
Key Vault's can be imported using the resource id, e.g.

terraform import azurerm_key_vault.example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.KeyVault/vaults/vault1