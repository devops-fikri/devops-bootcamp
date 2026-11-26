# Docker 4 — Docker Compose

Defined a multi-container app in a single [`compose.yaml`](compose.yaml):

| Service | Image | Role |
|---|---|---|
| `profile` | `redis` | Data store, persisted in the named volume `me` |
| `server` | `ghcr.io/infratify/arena-server` | Backend |
| `avatar2` | `ghcr.io/infratify/arena-avatar` | Frontend on port `8081`, configured with env vars |

**Skills:** Compose services · `depends_on` · named volumes · port mapping · environment variables

```bash
docker compose up -d     # start the whole stack
docker compose down      # stop everything; the "me" volume is kept
```
