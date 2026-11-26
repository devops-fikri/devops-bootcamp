# Prometheus — 2-Node Metrics Collection

Monitoring for the two-node fleet using the official **`prometheus.prometheus`** Ansible collection.

- **node_exporter** on both nodes (port 9100, reachable only from inside the VPC).
- **Prometheus** server on `node1` scraping itself and both exporters over private IPs.
- Prometheus UI (9090) only open to the operator's IP.

| File | Purpose |
|---|---|
| [`playbook-exporter.yaml`](playbook-exporter.yaml) | Installs node_exporter on all nodes |
| [`playbook-prometheus.yaml`](playbook-prometheus.yaml) | Installs Prometheus on node1 with scrape configs |
| [`requirements.yml`](requirements.yml) | Ansible collections used |
| `*.tf` | Same Terraform base as [Ansible 2](../ansible2) plus monitoring ports |

```bash
terraform apply
ansible-galaxy install -r requirements.yml
ansible-playbook playbook-exporter.yaml
ansible-playbook playbook-prometheus.yaml
# open http://<node1_ip>:9090/targets
```

> Scrape targets use the nodes' private IPs. Update them from `terraform output` after each fresh `apply`.
