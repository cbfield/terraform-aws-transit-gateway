module "my_oregon_transit_gateway" {
  source = "../../"

  providers = {
    aws = aws.oregon
  }

  description = "Oregon Transit Gateway"

  peering_attachments = [
    {
      tgw_id       = module.my_virginia_transit_gateway.tgw.id
      region       = module.my_virginia_transit_gateway.region
      routed_cidrs = ["10.2.0.0/16", "10.3.0.0/16"]
      tags         = { "Name" = "My other transit gateway in Virginia" }
    }
  ]

  vpc_attachment_accepters = [
    {
      attachment_id = "tgw-attach-123123"
      tags          = { "Name" = "That one VPC from another account with the thing in it" }
    }
  ]

  tags = {
    "Name" = "Oregon Transit Gateway"
  }
}

module "my_virginia_transit_gateway" {
  source = "../../"

  providers = {
    aws = aws.virginia
  }

  description = "Virginia Transit Gateway"

  peering_attachment_accepters = [
    {
      routed_cidrs  = ["10.0.0.0/16", "10.1.0.0/16"]
      attachment_id = module.my_oregon_transit_gateway.peering_attachments[module.my_virginia_transit_gateway.tgw.id].id
      tags          = { "Name" = "My other Transit gateway in Oregon" }
    }
  ]

  vpc_attachments = [
    {
      vpc_id  = "vpc-123123"
      subnets = ["subnet-123123", "subnet-234234"]
      tags    = { "Name" = "That one VPC in this account with the thing in it" }
    }
  ]

  tags = {
    "Name" = "Virginia Transit Gateway"
  }
}
