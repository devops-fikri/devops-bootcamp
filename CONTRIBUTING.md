# Workflow

This is a personal learning repository, but it follows a team-style Git workflow.

## Branching

- `main` is always in a working state.
- Each bootcamp session gets its own short-lived branch (for example `ansible2`).
- Work is merged through a **pull request**, so every session is one reviewable change (see the `#3`–`#21` PR numbers in the commit history).

## Commit messages

```
<Topic> <N>: <what was built>

e.g. Terraform 3: modules, NAT, user_data, tunnel
```

## Before opening a PR

- `terraform fmt -recursive` and `terraform validate`
- `ansible-lint` on any changed playbooks
- No secrets, `*.tfstate`, `*.tfvars`, private keys or generated `inventory.ini` files (enforced by [`.gitignore`](.gitignore))
- Add or update the folder's `README.md`

## Cleaning up

Destroy cloud resources at the end of each session (`terraform destroy`) to avoid unexpected AWS charges.
