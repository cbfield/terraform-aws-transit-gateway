resource "aws_ec2_transit_gateway" "tgw" {
  auto_accept_shared_attachments  = var.auto_accept_shared_attachments
  default_route_table_association = var.default_route_table_association
  description                     = var.description
  dns_support                     = var.dns_support
  vpn_ecmp_support                = var.vpn_ecmp_support

  tags = merge(var.tags, {
    "Managed By Terraform" = "true"
  })
}
