# Security_group

# Example
```Terraform
module "security_group" {
  source = "./modules/sg"

  vpc_id      = "vpc-3456891033"
  name        = "sg_name"
  description = "sg_description"
  rules       = {
    rule-no-1 = {
            type        = "ingress",
            description = "allow ssh port",
            from_port   = 22,
            to_port     = 22,
            protocol    = "tcp",
            cidr_blocks = ["0.0.0.0/0"]
    },
    rule-no-2 = {
            type        = "egress",
            description = "allow all outbound",
            from_port   = 0,
            to_port     = 0,
            protocol    = "-1",
            source_security_group_id = "sg-bhgy6yxs7scc7xc"
    }
  }
  tags        = {
      Name = "you can pass here any tags just like this one"
  }
}
```
