###################################################################################
#This module allows the creation of 1 Windows VM with 1 NIC
###################################################################################

#Variable declaration for Module

#The VM count
variable "VMCount" {
  type    = "string"
  default = "1"
}

#The VM name
variable "VMName" {
  type = "string"
}

#The VM location
variable "VMLocation" {
  type = "string"
}

#The RG in which the VMs are located
variable "VMRG" {
  type = "string"
}

#The NIC to associate to the VM
variable "VMNICid" {
  type = "list"
}

#The VM size
variable "VMSize" {
  type    = "string"
  default = "Standard_F1"
}

#The Availability set reference

variable "ASID" {
  type = "string"
}

#The Managed Disk Storage tier

variable "VMStorageTier" {
  type    = "string"
  default = "Premium_LRS"
}

#The VM Admin Name

variable "VMAdminName" {
  type    = "string"
  default = "VMAdmin"
}

#The VM Admin Password

variable "VMAdminPassword" {
  type = "string"
}

#The OS Disk Size

variable "OSDiskSize" {
  type    = "list"

}

#The OS Disk ID

variable "OSDiskId" {
  type    = "list"

}

#The OS Disk Name

variable "OSDiskName" {
  type    = "list"

}
# Managed Data Disk reference

variable "DataDiskId" {
  type = "list"
}

# Managed Data Disk Name

variable "DataDiskName" {
  type = "list"
}

# Managed Data Disk size

variable "DataDiskSize" {
  type = "list"
}

# VM images info
#get appropriate image info with the following command
#Get-AzureRMVMImagePublisher -location WestEurope
#Get-AzureRMVMImageOffer -location WestEurope -PublisherName <PublisherName>
#Get-AzureRmVMImageSku -Location westeurope -Offer <OfferName> -PublisherName <PublisherName>

variable "VMPublisherName" {
  type = "string"
}

variable "VMOffer" {
  type = "string"
}

variable "VMsku" {
  type = "string"
}

#The boot diagnostic storage uri

variable "DiagnosticDiskURI" {
  type = "string"
}

#Tag info

variable "EnvironmentTag" {
  type    = "string"
  default = "Poc"
}

variable "EnvironmentUsageTag" {
  type    = "string"
  default = "Poc usage only"
}

variable "CloudinitscriptPath" {
  type = "string"
}

variable "VMTypeTag" {
  type = "string"
  default = "Base"
}

variable "VMOSTag" {
  type = "string"
  default = "Linux"
}

variable "OwnerTag" {
  type = "string"
  default = "david@teknews.cloud"
}

variable "ProvisioningDateTag" {
  type = "string"
  default = "Today :)"
}

variable "SLAUptimeTag" {
  type = "string"
  #Can be 5712, 5724, 7724
  default = "5712"
}