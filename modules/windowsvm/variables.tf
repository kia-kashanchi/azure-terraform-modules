variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be created"
  type        = string
}

variable "vm_name" {
  description = "The name of the virtual machine"
  type        = string
}

variable "vm_size" {
  description = "The size of the virtual machine"
  type        = string
  default     = "Standard_DS1_v2"
}

variable "admin_username" {
  description = "The administrator username for the VM"
  type        = string
}

variable "admin_password" {
  description = "The administrator password for the VM"
  type        = string
  sensitive   = true
}

variable "virtual_network_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
}

variable "public_ip_address_name" {
  description = "The name of the public IP address"
  type        = string
}

variable "nsg_name" {
  description = "The name of the network security group"
  type        = string
}

variable "vnet_address_space" {
  description = "The address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_address_prefixes" {
  description = "The address prefixes for the subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "os_disk_type" {
  description = "The type of the OS disk"
  type        = string
  default     = "Premium_LRS"
}

variable "os_disk_caching" {
  description = "The caching type for the OS disk"
  type        = string
  default     = "ReadWrite"
}

variable "os_publisher" {
  description = "The publisher of the OS image"
  type        = string
  default     = "MicrosoftWindowsServer"
}

variable "os_offer" {
  description = "The offer of the OS image"
  type        = string
  default     = "WindowsServer"
}

variable "os_sku" {
  description = "The SKU of the OS image"
  type        = string
  default     = "2022-datacenter-azure-edition"
}

variable "os_version" {
  description = "The version of the OS image"
  type        = string
  default     = "latest"
}