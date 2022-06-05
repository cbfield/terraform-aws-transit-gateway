resource "aws_ec2_transit_gateway_route" "attachment_route" {
  for_each = { for route in flatten([
    for attachment in var.peering_attachments : [
      for cidr in attachment.routed_cidrs : {
        peer_id = attachment.peer_transit_gateway_id
        cidr    = cidr
      }
    ]
  ]) : "${route.cidr}:${route.peer_id}" => route }

  destination_cidr_block         = each.value.cidr
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_peering_attachment.attachment[each.value.peer_id].id
  transit_gateway_route_table_id = aws_ec2_transit_gateway.tgw.association_default_route_table_id
}

resource "aws_ec2_transit_gateway_route" "accepter_route" {
  for_each = { for route in flatten([
    for accepter in var.peering_attachment_accepters : [
      for cidr in accepter.routed_cidrs : {
        attachment_id = accepter.transit_gateway_attachment_id
        cidr          = cidr
      }
    ]
  ]) : "${route.cidr}:${route.attachment_id}" => route }

  destination_cidr_block         = each.value.cidr
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_peering_attachment_accepter.accepter[each.value.attachment_id].id
  transit_gateway_route_table_id = aws_ec2_transit_gateway.tgw.association_default_route_table_id
}
