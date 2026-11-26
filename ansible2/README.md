# Ansible 2 — Templates, Handlers & Disk Resize

Extends [Ansible 1](../ansible1) with more realistic configuration management:

- **Jinja2 templates** for the web page (rendered with `ansible_facts`: hostname, IP, memory) and the nginx site config.
- **Handlers**: nginx restarts only when its config actually changes.
- **Disk resize playbook**: grows the root partition and filesystem online (`growpart` + `resize2fs`) after the EBS volume is enlarged to 16 GB in Terraform, with idempotent `changed_when` / `failed_when`.
- **Dynamic SSH security group** limited to the operator's current IP.

| File | Purpose |
|---|---|
| [`playbook-web.yaml`](playbook-web.yaml) | nginx install + templates + handler |
| [`index.html.j2`](index.html.j2), [`nginx-site.conf.j2`](nginx-site.conf.j2) | Jinja2 templates |
| [`playbook-disk.yaml`](playbook-disk.yaml) | Online partition and filesystem resize |

```bash
terraform apply
ansible-playbook playbook-disk.yaml
ansible-playbook playbook-web.yaml
```
