# transit-gateway
A Terraform module for a Transit Gateway, with variables for static routes and peering and vpc attachments(/accepters)

# Terraform Docs

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
| [aws_ec2_transit_gateway.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_accept_shared_attachments"></a> [auto\_accept\_shared\_attachments](#input\_auto\_accept\_shared\_attachments) | Enable to automatically accept all attachment requests | `string` | `"disable"` | no |
| <a name="input_default_route_table_association"></a> [default\_route\_table\_association](#input\_default\_route\_table\_association) | Enable to automatically associate all attachments with the default route table | `string` | `"enable"` | no |
| <a name="input_default_route_table_propagation"></a> [default\_route\_table\_propagation](#input\_default\_route\_table\_propagation) | Enable to automatically propagate routes for attachments to the default route table | `string` | `"enable"` | no |
| <a name="input_description"></a> [description](#input\_description) | A description to assign to the transit gateway | `string` | n/a | yes |
| <a name="input_dns_support"></a> [dns\_support](#input\_dns\_support) | Enable to allow DNS support | `string` | `"enable"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to assign to the transit gateway | `map(string)` | `{}` | no |
| <a name="input_vpn_ecmp_support"></a> [vpn\_ecmp\_support](#input\_vpn\_ecmp\_support) | Enable VPN Equal Cost Multipath Protocol support | `string` | `"enable"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_auto_accept_shared_attachments"></a> [auto\_accept\_shared\_attachments](#output\_auto\_accept\_shared\_attachments) | The provided value for var.auto\_accept\_shared\_attachments |
| <a name="output_default_route_table_association"></a> [default\_route\_table\_association](#output\_default\_route\_table\_association) | The provided value for var.default\_route\_table\_association |
| <a name="output_default_route_table_propagation"></a> [default\_route\_table\_propagation](#output\_default\_route\_table\_propagation) | The provided value for var.default\_route\_table\_propagation |
| <a name="output_description"></a> [description](#output\_description) | The provided value for var.description |
| <a name="output_dns_support"></a> [dns\_support](#output\_dns\_support) | The provided value for var.dns\_support |
| <a name="output_tags"></a> [tags](#output\_tags) | The provided value for var.tags |
| <a name="output_vpn_ecmp_support"></a> [vpn\_ecmp\_support](#output\_vpn\_ecmp\_support) | The provided value for var.vpn\_ecmp\_support |
