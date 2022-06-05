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

variable "peering_attachment_accepters" {
  description = "Accepters for peering attachments from other transit gateways"
  type = list(object({
    routed_cidrs  = list(string)
    attachment_id = string
    tags          = map(string)
  }))
  default = []
}

variable "peering_attachments" {
  description = "Attachments from this transit gateway to others"
  type = list(object({
    account_id   = string
    tgw_id       = string
    region       = string
    routed_cidrs = list(string)
    tags         = map(string)
  }))
  default = []
}

variable "tags" {
  description = "Tags to assign to the transit gateway"
  type        = map(string)
  default     = {}
}

variable "vpc_attachments" {
  description = "Attachments of this transit gateway to VPCs. Each attachment requires a VPC ID and subnet IDs"
  type = list(object({
    subnets = list(string)
    vpc_id  = string
    tags    = map(string)
  }))
  default = []
}

variable "vpc_attachment_accepters" {
  description = "Accepters for VPC attachments to this transit gateway"
  type = list(object({
    attachment_id = string
    tags          = map(string)
  }))
  default = []
}

variable "vpn_ecmp_support" {
  description = "Enable VPN Equal Cost Multipath Protocol support"
  type        = string
  default     = "enable"
}
