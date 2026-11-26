# Terraform 2 — EC2, Private Subnet & Remote State

Builds on Terraform 1 by adding compute and a public/private network split.

- **3 EC2 instances** (Ubuntu 24.04, AMI looked up with a `data` source): two in the public subnet, one in a **private subnet** with no public IP.
- Access to all instances through **SSM Session Manager** (IAM instance profile), with no SSH keys.
- **Remote state** in S3 with native lockfile locking (`use_lockfile = true`).
- Input **variables** and **outputs** that print ready-to-paste `aws ssm start-session` commands.

**Skills:** `aws_instance` · data sources · variables & outputs · S3 backend · public vs private subnets

| File | Purpose |
|---|---|
| [`providers.tf`](providers.tf) | Provider + S3 backend |
| [`network.tf`](network.tf) | VPC, public & private subnets, route tables |
| [`security.tf`](security.tf) | Public web SG + private SG |
| [`ec2.tf`](ec2.tf) | AMI lookup + 3 instances |
| [`variables.tf`](variables.tf) / [`output.tf`](output.tf) | Inputs and outputs |
