variable "subscription_id" {
  description = "(Required) The subscription ID of the SP."
  sensitive   = true
  default     = env("SUBSCRIPTION_ID")
}

variable "client_id" {
  description = "(Required) The client ID of the SP."
  sensitive   = true
  default     = env("CLIENT_ID")
}

variable "client_secret" {
  description = "(Required) The client secret of the SP."
  sensitive   = true
  default     = env("CLIENT_SECRET")
}

variable "resource_group" {
  description = "The resource group for the artifact."
}

variable "gallery_name" {
  description = "The image gallery name"
}

variable "shared_image_gallery_image" {
  description = "The name of the Windows image definition"
}

variable "managed_image_name" {
  description = "The name of the resultant managed image"
}

variable "image_offer" {
  description = "The image offer."
}

variable "image_sku" {
  description = "The image sku."
}

variable "image_publisher" {
  description = "The image publisher."
}

variable "image_version" {
  description = "The image version."
}