# Terraform 1 — First Infrastructure as Code

First Terraform project: a custom **VPC** with a public subnet, internet gateway, route table and a web security group, written by hand with raw `aws_*` resources.

```
VPC 10.20.0.0/16
└── Public subnet 10.20.1.0/24 (ap-southeast-1a) ── route 0.0.0.0/0 → Internet Gateway
    └── Security group: HTTP 80 in, all out
```

**Skills:** providers, resources & data sources · `init → plan → apply → destroy` workflow

| File | Purpose |
|---|---|
| [`providers.tf`](providers.tf) | AWS provider `~> 6.0`, region `ap-southeast-1` |
| [`network.tf`](network.tf) | VPC, subnet, IGW, route table & association |
| [`security.tf`](security.tf) | Security group with ingress/egress rules |
| [`terraform1.md`](terraform1.md) | Session notes |

```bash
terraform init && terraform plan && terraform apply
terraform destroy
```
