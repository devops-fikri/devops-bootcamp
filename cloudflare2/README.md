# Cloudflare 2 — Origin, Proxy & Cloudflare Tunnel

Put an EC2 web server behind Cloudflare in two ways:

1. **Proxied A record** → Elastic IP of the origin server.
2. **Cloudflare Tunnel** (`cloudflared`): an outbound-only connection, so the server needs **no inbound ports** open.

**Skills:** reverse proxy / CDN · Cloudflare SSL modes · Cloudflare Tunnel (zero-trust ingress)

| File | Purpose |
|---|---|
| [`notes.txt`](notes.txt) | Origin IP, proxied hostname, tunnel hostname and SSL mode |

> The tunnel pattern is automated later with Terraform in [`terraform3`](../terraform3).
