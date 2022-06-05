output "accepter_static_routes" {
  description = "Static routes added to the default route table for this transit gateway, destined for peering attachment accepters"
  value       = aws_ec2_transit_gateway_route.accepter_route
}

output "attachment_static_routes" {
  description = "Static routes added to the default route table for this transit gateway, destined for peering attachments"
  value       = aws_ec2_transit_gateway_route.attachment_route
}

output "auto_accept_shared_attachments" {
  description = "The provided value for var.auto_accept_shared_attachments"
  value       = var.auto_accept_shared_attachments
}

output "aws_caller_id" {
  description = "The AWS caller identity used to invoke this module"
  value       = data.aws_caller_identity.current
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

output "peering_attachment_accepters" {
  description = "Peering attachment accepters created through this module"
  value       = aws_ec2_transit_gateway_peering_attachment_accepter.accepter
}

output "peering_attachments" {
  description = "Peering attachments created through this module"
  value       = aws_ec2_transit_gateway_peering_attachment.attachment
}

output "region" {
  description = "The region containing the transit gateway"
  value       = data.aws_region.current.name
}

output "tags" {
  description = "The provided value for var.tags"
  value       = var.tags
}

output "tgw" {
  description = "The transit gateway resource"
  value       = aws_ec2_transit_gateway.tgw
}

output "vpc_attachments" {
  description = "VPC attachments created through this module"
  value       = aws_ec2_transit_gateway_vpc_attachment.attachment
}

output "vpc_attachment_accepters" {
  description = "VPC attachment accepters created through this module"
  value       = aws_ec2_transit_gateway_vpc_attachment_accepter.accepter
}

output "vpn_ecmp_support" {
  description = "The provided value for var.vpn_ecmp_support"
  value       = var.vpn_ecmp_support
}
