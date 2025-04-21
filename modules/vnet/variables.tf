variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where the VNet will be created, provided by the resource group module."
}

variable "location" {
  type        = string
  description = "The Azure region where the VNet will be created, provided by the resource group module."
}

variable "vnet_name" {
  type        = string
  description = "The name of the VNet."
}

variable "address_space" {
  type        = list(string)
  description = "The address space for the VNet, e.g., ['10.0.0.0/16']."
}

variable "subnets" {
  type = list(object({
    name           = string
    address_prefix = string
    nsg_id         = optional(string)
    route_table_id = optional(string)
  }))
  default     = []
  description = "A list of subnets to create within the VNet. Each subnet requires a name and address_prefix. Optionally, provide nsg_id and route_table_id for associations."
}

variable "dns_servers" {
  type        = list(string)
  default     = []
  description = "List of DNS servers for the VNet."
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "A map of tags to apply to the VNet."
}