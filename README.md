# transit-gateway
A Terraform module for a Transit Gateway, with variables for static routes and peering and vpc attachments(/accepters)

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ec2_transit_gateway.tgw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway) | resource |
| [aws_ec2_transit_gateway_peering_attachment.attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_peering_attachment) | resource |
| [aws_ec2_transit_gateway_peering_attachment_accepter.accepter](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_peering_attachment_accepter) | resource |
| [aws_ec2_transit_gateway_route.accepter_route](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_route) | resource |
| [aws_ec2_transit_gateway_route.attachment_route](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_route) | resource |
| [aws_ec2_transit_gateway_vpc_attachment.attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_vpc_attachment) | resource |
| [aws_ec2_transit_gateway_vpc_attachment_accepter.accepter](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_vpc_attachment_accepter) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_accept_shared_attachments"></a> [auto\_accept\_shared\_attachments](#input\_auto\_accept\_shared\_attachments) | Enable to automatically accept all attachment requests | `string` | `"disable"` | no |
| <a name="input_default_route_table_association"></a> [default\_route\_table\_association](#input\_default\_route\_table\_association) | Enable to automatically associate all attachments with the default route table | `string` | `"enable"` | no |
| <a name="input_default_route_table_propagation"></a> [default\_route\_table\_propagation](#input\_default\_route\_table\_propagation) | Enable to automatically propagate routes for attachments to the default route table | `string` | `"enable"` | no |
| <a name="input_description"></a> [description](#input\_description) | A description to assign to the transit gateway | `string` | n/a | yes |
| <a name="input_dns_support"></a> [dns\_support](#input\_dns\_support) | Enable to allow DNS support | `string` | `"enable"` | no |
| <a name="input_peering_attachment_accepters"></a> [peering\_attachment\_accepters](#input\_peering\_attachment\_accepters) | Accepters for peering attachments from other transit gateways | <pre>list(object({<br>    routed_cidrs  = list(string)<br>    attachment_id = string<br>    tags          = map(string)<br>  }))</pre> | `[]` | no |
| <a name="input_peering_attachments"></a> [peering\_attachments](#input\_peering\_attachments) | Attachments from this transit gateway to others | <pre>list(object({<br>    account_id   = string<br>    tgw_id       = string<br>    region       = string<br>    routed_cidrs = list(string)<br>    tags         = map(string)<br>  }))</pre> | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to assign to the transit gateway | `map(string)` | `{}` | no |
| <a name="input_vpc_attachment_accepters"></a> [vpc\_attachment\_accepters](#input\_vpc\_attachment\_accepters) | Accepters for VPC attachments to this transit gateway | <pre>list(object({<br>    attachment_id = string<br>    tags          = map(string)<br>  }))</pre> | `[]` | no |
| <a name="input_vpc_attachments"></a> [vpc\_attachments](#input\_vpc\_attachments) | Attachments of this transit gateway to VPCs. Each attachment requires a VPC ID and subnet IDs | <pre>list(object({<br>    subnets = list(string)<br>    vpc_id  = string<br>    tags    = map(string)<br>  }))</pre> | `[]` | no |
| <a name="input_vpn_ecmp_support"></a> [vpn\_ecmp\_support](#input\_vpn\_ecmp\_support) | Enable VPN Equal Cost Multipath Protocol support | `string` | `"enable"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_accepter_static_routes"></a> [accepter\_static\_routes](#output\_accepter\_static\_routes) | Static routes added to the default route table for this transit gateway, destined for peering attachment accepters |
| <a name="output_attachment_static_routes"></a> [attachment\_static\_routes](#output\_attachment\_static\_routes) | Static routes added to the default route table for this transit gateway, destined for peering attachments |
| <a name="output_auto_accept_shared_attachments"></a> [auto\_accept\_shared\_attachments](#output\_auto\_accept\_shared\_attachments) | The provided value for var.auto\_accept\_shared\_attachments |
| <a name="output_aws_caller_id"></a> [aws\_caller\_id](#output\_aws\_caller\_id) | The AWS caller identity used to invoke this module |
| <a name="output_default_route_table_association"></a> [default\_route\_table\_association](#output\_default\_route\_table\_association) | The provided value for var.default\_route\_table\_association |
| <a name="output_default_route_table_propagation"></a> [default\_route\_table\_propagation](#output\_default\_route\_table\_propagation) | The provided value for var.default\_route\_table\_propagation |
| <a name="output_description"></a> [description](#output\_description) | The provided value for var.description |
| <a name="output_dns_support"></a> [dns\_support](#output\_dns\_support) | The provided value for var.dns\_support |
| <a name="output_peering_attachment_accepters"></a> [peering\_attachment\_accepters](#output\_peering\_attachment\_accepters) | Peering attachment accepters created through this module |
| <a name="output_peering_attachments"></a> [peering\_attachments](#output\_peering\_attachments) | Peering attachments created through this module |
| <a name="output_region"></a> [region](#output\_region) | The region containing the transit gateway |
| <a name="output_tags"></a> [tags](#output\_tags) | The provided value for var.tags |
| <a name="output_tgw"></a> [tgw](#output\_tgw) | The transit gateway resource |
| <a name="output_vpc_attachment_accepters"></a> [vpc\_attachment\_accepters](#output\_vpc\_attachment\_accepters) | VPC attachment accepters created through this module |
| <a name="output_vpc_attachments"></a> [vpc\_attachments](#output\_vpc\_attachments) | VPC attachments created through this module |
| <a name="output_vpn_ecmp_support"></a> [vpn\_ecmp\_support](#output\_vpn\_ecmp\_support) | The provided value for var.vpn\_ecmp\_support |
<!-- END_TF_DOCS -->
