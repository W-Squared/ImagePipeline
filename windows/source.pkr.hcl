source "azure-arm" "basic" {
  client_id       = var.client_id
  client_secret   = var.client_secret
  subscription_id = var.subscription_id
  location        = "eastus"

  shared_image_gallery_destination {
    resource_group      = var.resource_group
    gallery_name        = var.gallery_name
    replication_regions = ["westus", "centralus"]
    image_name          = var.shared_image_gallery_image
    image_version       = formatdate("MM.YYYY.DDhhmm", timestamp())
  }
  managed_image_name = format("%s-%s", formatdate("YYYY.MM.DD.hhmm", timestamp()), var.managed_image_name)
  managed_image_resource_group_name = var.resource_group

  os_type = "Windows"
  vm_size = "Standard_B4ms"

  image_publisher = var.image_publisher
  image_offer     = var.image_offer
  image_sku       = var.image_sku
  image_version   = var.image_version

  communicator   = "winrm"
  winrm_use_ssl  = true
  winrm_insecure = true
  winrm_timeout  = "5m"
  winrm_username = "packer"
  winrm_password = "P@ssw0rd!"
}
