# AWS 1 — IAM & AWS CLI

Set up a dedicated IAM user instead of using the root account, configured the AWS CLI, and verified the identity.

**Skills:** IAM users & least-privilege access · AWS CLI profiles · `aws sts get-caller-identity`

| File | Purpose |
|---|---|
| [`identity.json`](identity.json) | Output of `aws sts get-caller-identity` (account ID masked) |

```bash
aws configure
aws sts get-caller-identity
```
