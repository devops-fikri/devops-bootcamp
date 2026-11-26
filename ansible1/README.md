# Ansible 1 — Terraform + Ansible: Provision, then Configure

The standard two-tool workflow: **Terraform provisions** the servers, **Ansible configures** them.

1. Terraform creates two EC2 nodes and **generates the Ansible inventory** from their public IPs (`local_file` + `templatefile`).
2. An Ansible playbook installs and starts **nginx** on both nodes and writes a per-host page.

**Skills:** Ansible inventories, playbooks, modules (`apt`, `service`, `copy`) · Terraform → Ansible hand-off

| File | Purpose |
|---|---|
| [`ec2.tf`](ec2.tf), [`network.tf`](network.tf), [`security.tf`](security.tf) | Two Ubuntu nodes in a VPC module |
| [`inventory.tf`](inventory.tf) + [`inventory.ini.tftpl`](inventory.ini.tftpl) | Generates `inventory.ini` from Terraform outputs |
| [`playbook-web.yaml`](playbook-web.yaml) | Installs nginx |
| [`ansible.cfg`](ansible.cfg) | Points Ansible at the generated inventory |

```bash
terraform init && terraform apply
ansible all -m ping
ansible-playbook playbook-web.yaml
```

> SSH (port 22) is only allowed from **your current public IP**. It's looked up at plan time through the `http` data source.
