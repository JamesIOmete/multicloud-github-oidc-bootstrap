# Multi-Cloud GitHub OIDC Bootstrap (Terraform)

Terraform stacks to enable **keyless CI/CD** from GitHub Actions to:
- **AWS** (IAM role + OIDC provider trust)
- **Azure** (Entra app/SP + federated credentials)
- **GCP** (Workload Identity Federation + service account)

## Repo layout
- `stacks/aws/oidc-bootstrap`
- `stacks/azure/oidc-bootstrap`
- `stacks/gcp/oidc-bootstrap`

## Quick start (per stack)
1. `cd stacks/<cloud>/oidc-bootstrap`
2. `terraform init`
3. `terraform plan`
4. `terraform apply`

> Note: each cloud stack will be implemented to accept a consistent set of variables:
> org, repo, optional environment/branch refs, and least-privilege role assignment patterns.

## CI
GitHub Actions runs:
- `terraform fmt -check -recursive`
- `terraform validate` per stack (backend disabled in CI)

