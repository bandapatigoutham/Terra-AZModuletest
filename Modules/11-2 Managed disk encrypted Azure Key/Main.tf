###################################################################
#This module allows the creation of a Managed disk with count option
###################################################################



#ManagedDisk creation

resource "azurerm_managed_disk" "TerraManagedDiskwithcount" {
  count                = "${var.Manageddiskcount}"
  name                 = "${var.ManageddiskName}${count.index+1}"
  location             = "${var.ManagedDiskLocation}"
  resource_group_name  = "${var.RGName}"
  storage_account_type = "${var.StorageAccountType}"
  create_option        = "${var.CreateOption}"
  disk_size_gb         = "${var.DiskSizeInGB}"
  encryption_settings {
    enabled = true
    key_encryption_key {
      key_url = "${var.KeyURI}"
      source_vault_url = "${var.KeyVaultId}"

    }

  }

  tags {
    environment = "${var.EnvironmentTag}"
    usage       = "${var.EnvironmentUsageTag}"
  }
}

