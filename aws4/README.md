# AWS 4 — ECR, NAT Gateway & Elastic IP

Created a private **ECR** repository for container images, deployed a **NAT gateway** so private subnets can reach the internet, attached an **Elastic IP**, then tore the NAT gateway down to avoid cost.

**Skills:** Amazon ECR · NAT gateway · Elastic IP · cost awareness (cleaning up billable resources)

| File | Purpose |
|---|---|
| [`notes.txt`](notes.txt) | NAT gateway state (`deleted`), Elastic IP and ECR repository URI (account masked) |
