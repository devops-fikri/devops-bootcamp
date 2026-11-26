# Docker 3 — ECR, Volumes & Networks

Pushed an image to a private **Amazon ECR** registry, used a **named volume** for persistent data, and connected containers on a user-defined **bridge network**.

**Skills:** ECR auth & push · Docker volumes · Docker networks

```bash
aws ecr get-login-password --region ap-southeast-1 \
  | docker login --username AWS --password-stdin <ACCOUNT_ID>.dkr.ecr.ap-southeast-1.amazonaws.com
docker tag app:v1 <ACCOUNT_ID>.dkr.ecr.ap-southeast-1.amazonaws.com/devops-bootcamp/fikri:v1
docker push <ACCOUNT_ID>.dkr.ecr.ap-southeast-1.amazonaws.com/devops-bootcamp/fikri:v1
```

| File | Purpose |
|---|---|
| [`notes.txt`](notes.txt) | Pushed image tags, networks and volumes (account masked) |
