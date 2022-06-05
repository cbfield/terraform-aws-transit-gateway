resource "aws_ec2_transit_gateway_peering_attachment" "attachment" {
  for_each = { for attachment in var.peering_attachments : attachment.tgw_id => attachment }

  peer_account_id         = each.value.account_id
  peer_region             = each.value.region
  peer_transit_gateway_id = each.key
  transit_gateway_id      = aws_ec2_transit_gateway.tgw.id

  tags = merge(each.value.tags, {
    "Managed By Terraform" = "true"
  })
}

resource "aws_ec2_transit_gateway_peering_attachment_accepter" "accepter" {
  for_each = { for accepter in var.peering_attachment_accepters : accepter.transit_gateway_attachment_id => accepter }

  transit_gateway_attachment_id = each.key

  tags = merge(each.value.tags, {
    "Managed By Terraform" = "true"
  })
}
