module "my_transit_gateway" {
  source = "../"

  description = "My super awesome transit gateway"

  tags = {
    "Name" = "My super awesome transit gateway"
  }
}
