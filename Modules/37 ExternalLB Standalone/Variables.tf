######################################################################
# This module creates an external load balancer
######################################################################

#Module variables

variable "ExtLBName" {
  type = "string"
}

variable "AzureRegion" {
  type = "string"
}

variable "RGName" {
  type = "string"
}

variable "FEConfigName" {
  type = "string"
}

variable "PublicIPId" {
  type = "list"
}

variable "EnvironmentTag" {
  type = "string"
}

variable "EnvironmentTag" {
  type = "string"
}

variable "OwnerTag" {
  type = "string"
}

variable "ProvisioningDateTag" {
  type = "string"
}