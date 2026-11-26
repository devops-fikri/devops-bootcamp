# CI/CD — GitHub Actions (4 sessions)

| Session | Topic | Key concepts |
|---|---|---|
| [1](cicd1.md) | Workflows, jobs & GitHub Pages | `.github/workflows/*.yaml`, `push` / `workflow_dispatch` triggers, Pages deploy |
| [2](cicd2.md) | Test gates & branch protection | `needs: test`, required status checks, PR reviews |
| [3](cicd3.md) | Secrets & variables | `${{ secrets.NAME }}` vs `${{ vars.NAME }}`, never hard-code credentials |
| [4](cicd4.md) | GHCR, self-hosted runner & auto-deploy | `docker/login-action`, `docker/build-push-action`, deploy on push |

**Skills:** GitHub Actions · pipeline gating · secrets management · container registry (GHCR) · self-hosted runners

> Session notes are written in Malay.
