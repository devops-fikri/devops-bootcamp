# Terraform 4 — AI-Assisted IaC with the Terraform MCP Server

Used an AI coding agent ([opencode](https://opencode.ai)) connected to HashiCorp's **Terraform MCP server**, which gives the agent up-to-date provider and module docs, to help write Terraform and deploy a web app to EC2.

| File | Purpose |
|---|---|
| [`../opencode.json`](../opencode.json) | Agent config that runs `hashicorp/terraform-mcp-server` in Docker |
| [`index.html`](index.html) | Static "student card" page deployed during the session |

**Skills:** MCP (Model Context Protocol) · AI-assisted infrastructure authoring
