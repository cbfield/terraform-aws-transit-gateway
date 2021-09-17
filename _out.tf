output "auto_accept_shared_attachments" {
  description = "The provided value for var.auto_accept_shared_attachments"
  value       = var.auto_accept_shared_attachments
}

output "default_route_table_association" {
  description = "The provided value for var.default_route_table_association"
  value       = var.default_route_table_association
}

output "default_route_table_propagation" {
  description = "The provided value for var.default_route_table_propagation"
  value       = var.default_route_table_propagation
}

output "description" {
  description = "The provided value for var.description"
  value       = var.description
}

output "dns_support" {
  description = "The provided value for var.dns_support"
  value       = var.dns_support
}

output "tags" {
  description = "The provided value for var.tags"
  value       = var.tags
}

output "vpc_attachments" {
  description = "VPC attachments created through this module"
  value       = aws_ec2_transit_gateway_vpc_attachment.vpc_attachment
}

output "vpc_attachment_accepters" {
  description = "VPC attachment accepters created through this module"
  value       = aws_ec2_transit_gateway_vpc_attachment_accepter.vpc_attachment_accepter
}

output "vpn_ecmp_support" {
  description = "The provided value for var.vpn_ecmp_support"
  value       = var.vpn_ecmp_support
}
