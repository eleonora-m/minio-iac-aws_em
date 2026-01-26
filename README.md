# DevOps Project 01: MinIO on AWS (IaC)

## RU: Описание
Цель: развернуть MinIO как production like сервис на AWS EC2 с помощью Terraform и Ansible, обеспечить HTTPS доступ, health checks, логи, алерты и базовый runbook.

Open source app: https://github.com/minio/minio

## EN: Description
Goal: deploy MinIO as a production like service on AWS EC2 using Terraform and Ansible, expose it via HTTPS, and implement health checks, logging, alerts, and a basic runbook.

Open source app: https://github.com/minio/minio

## Scope
- Terraform: VPC, subnets, security groups, EC2, IAM, S3 remote state
- Ansible: hardening, installation, systemd service, configuration
- HTTPS via Nginx or ALB + ACM
- CloudWatch logs and basic alarms
- Documentation and demo

## Deliverables
- Working infrastructure provisioned via Terraform
- Application installed and managed as a service
- README with steps: deploy, verify, troubleshoot, destroy
- Architecture diagram
- Demo (live or recorded)

## Acceptance Criteria
- `terraform apply` and `terraform destroy` are fully reproducible
- MinIO reachable via HTTPS
- Health endpoints are working
- Logs and alarms are configured
- Runbook exists and is usable

## Repository Structure
- terraform/
- ansible/
- docs/
