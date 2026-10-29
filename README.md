# fh-wien-cloud-scaling-starter

Terraform starter for the FH Wien cloud scaling exercise (AWS, `eu-central-1`).

Provides:
- VPC `10.0.0.0/16` with two public subnets (`eu-central-1a`, `eu-central-1b`), internet gateway and route table
- Security groups for instances (HTTP + SSH) and a load balancer (HTTP)
- `startup.sh`: EC2 user data for Amazon Linux 2023 that installs Docker and runs nginx on port 80

`main.tf` is intentionally empty – add your launch template, auto scaling group and load balancer there.

## Usage

```sh
terraform init
terraform apply
# ...
terraform destroy
```

Terraform state (`terraform.tfstate`) is created locally and is git-ignored – never commit it.
