variable "auto_accept_shared_attachments" {
  description = "Enable to automatically accept all attachment requests"
  type        = string
  default     = "disable"
}

variable "default_route_table_association" {
  description = "Enable to automatically associate all attachments with the default route table"
  type        = string
  default     = "enable"
}

variable "default_route_table_propagation" {
  description = "Enable to automatically propagate routes for attachments to the default route table"
  type        = string
  default     = "enable"
}

variable "description" {
  description = "A description to assign to the transit gateway"
  type        = string
}

variable "dns_support" {
  description = "Enable to allow DNS support"
  type        = string
  default     = "enable"
}

variable "tags" {
  description = "Tags to assign to the transit gateway"
  type        = map(string)
  default     = {}
}

variable "vpn_ecmp_support" {
  description = "Enable VPN Equal Cost Multipath Protocol support"
  type        = string
  default     = "enable"
}
