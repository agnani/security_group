# locals {
#   environment         = terraform.workspace
#   env                 = var.environment[local.environment]
#   region              = local.env["region"]
#   public_ingress_rule = local.env["public_ingress_rule"]
#   public_egress_rule  = local.env["public_egress_rule"]
#   name                = local.env["name"]
#   description         = local.env["description"]
# }