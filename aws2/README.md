# AWS 2 — EC2, IAM Role, SSM & S3

Launched an EC2 instance with an **IAM instance role** and connected with **SSM Session Manager**, so there's no SSH key and no open port 22. Also used S3 from the CLI.

**Skills:** EC2 · IAM roles / instance profiles · Systems Manager Session Manager · S3

| File | Purpose |
|---|---|
| [`notes.txt`](notes.txt) | Instance ID and S3 output captured during the session |

```bash
aws ssm start-session --target <instance-id>
aws s3 ls
```
