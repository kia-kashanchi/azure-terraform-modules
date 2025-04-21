variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where the VM will be created."
}

variable "location" {
  type        = string
  description = "The Azure region where the VM will be created."
}

variable "vm_name" {
  type        = string
  description = "The name of the VM."
}

variable "vm_size" {
  type        = string
  default     = "Standard_B1s"
  description = "The size of the VM (e.g., Standard_B1s, Standard_D2s_v3)."
}

variable "admin_username" {
  type        = string
  default     = "azureuser"
  description = "The admin username for the VM."
}

variable "ssh_public_key" {
  type        = string
  description = "The SSH public key for VM access."
}

variable "subnet_id" {
  type        = string
  description = "The ID of the subnet to connect the VM to."
}

variable "public_ip_id" {
  type        = string
  default     = null
  description = "Optional: The ID of a public IP address to associate with the VM."
}

variable "disk_type" {
  type        = string
  default     = "Standard_LRS"
  description = "The type of the OS disk (e.g., Standard_LRS, Premium_LRS)."
}

variable "image_publisher" {
  type        = string
  default     = "Canonical"
  description = "The publisher of the OS image."
}

variable "image_offer" {
  type        = string
  default     = "UbuntuServer"
  description = "The offer of the OS image."
}

variable "image_sku" {
  type        = string
  default     = "18.04-LTS"
  description = "The SKU of the OS image."
}

variable "image_version" {
  type        = string
  default     = "latest"
  description = "The version of the OS image."
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "A map of tags to apply to the VM."
}

variable "os_disk_caching" {
  type        = string
  default     = "ReadWrite"
  description = "The caching type for the OS disk (e.g., ReadOnly, ReadWrite, None)."
}