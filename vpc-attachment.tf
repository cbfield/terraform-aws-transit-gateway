resource "aws_ec2_transit_gateway_vpc_attachment" "attachment" {
  for_each = { for attachment in var.vpc_attachments : attachment.vpc_id => attachment }

  appliance_mode_support = "enable"
  ipv6_support           = "enable"
  subnet_ids             = each.value.subnets
  transit_gateway_id     = aws_ec2_transit_gateway.tgw.id
  vpc_id                 = each.key

  tags = merge(each.value.tags, {
    "Managed By Terraform" = ""
  })
}

resource "aws_ec2_transit_gateway_vpc_attachment_accepter" "accepter" {
  for_each = { for accepter in var.vpc_attachment_accepters : accepter.transit_gateway_attachment_id => accepter }

  transit_gateway_attachment_id = each.key

  tags = merge(each.value.tags, {
    "Managed By Terraform" = ""
  })
}
