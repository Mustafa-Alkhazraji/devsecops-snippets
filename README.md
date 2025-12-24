# 🔐 DevSecOps Snippets – AWS Security Cheat Sheet (2025)

<p align="center">
  <img src="https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white" />
  <img src="https://img.shields.io/badge/DevSecOps-FF9900?style=for-the-badge&logo=paloaltonetworks&logoColor=white" />
  <img src="https://img.shields.io/badge/Security-Verified-brightgreen?style=for-the-badge" />
  <img src="https://img.shields.io/badge/License-MIT-blue?style=for-the-badge" />
</p>

---

### 🎯 Overview
This is a **production-ready DevSecOps toolbox** focused on AWS security. It provides reusable, well-documented snippets to help engineers build and operate cloud infrastructure with a **security-by-default mindset**.

> **Goal:** Make DevSecOps practical, readable, and ready for real-world production use.

---

## 🗺️ Security Domains & Navigation

| Domain | Focus Area | Directory |
| :--- | :--- | :--- |
| ☁️ **EC2** | IMDSv2, Hardening, Monitoring | [`/ec2`](./ec2) |
| ☸️ **EKS** | Kubernetes Security & Governance | [`/eks`](./eks) |
| 🛡️ **Guardrails** | Compliance, Config & Drift Detection | [`/guardrails`](./guardrails) |
| 👤 **IAM** | Least Privilege, OIDC & Zero Trust | [`/iam`](./iam) |
| 🚨 **Response** | Incident Response Fundamentals | [`/incident-response`](./incident-response) |
| 📜 **Logging** | CloudTrail & Audit Logging | [`/logging`](./logging) |
| 🌐 **Network** | Secure VPC & Private Workloads | [`/networking`](./networking) |
| 🗄️ **S3** | Encryption & Public Access Blocks | [`/s3`](./s3) |
| 🔑 **Secrets** | Secrets Manager & Runtime Retrieval | [`/secrets`](./secrets) |

---



## 🧱 Repository Structure
```text
devsecops-snippets/
├── ec2/                  # EC2 security baselines & hardening
├── eks/                  # EKS security notes and guidance
├── guardrails/           # AWS governance & compliance controls
├── iam/                  # Identity & Access Management (IAM)
├── incident-response/    # Incident response fundamentals
├── logging/              # Logging & audit (CloudTrail)
├── networking/           # Secure networking (VPC)
├── s3/                   # S3 storage security
├── secrets/              # Secrets management
└── README.md             # This document
🧠 Design Principles
Security by Default: Every snippet enforces maximum security out-of-the-box.

Least Privilege: Policies are scoped to the minimum required permissions.

Auditability: Every action is designed to leave a clear trail.

Human-Readable: Code is clean and well-commented for peer review.

🚀 How to Use This Repository
Browse: Select a security domain (e.g., iam/).

Verify: Read the .md documentation within each folder to understand the "Why".

Deploy: Copy the snippet (CLI, Shell, or Terraform) and adapt it to your environment.

Audit: Ensure you have CloudWatch/CloudTrail enabled to monitor changes.

🤝 Contributing
Contributions are what make the community amazing!

Security improvements take priority over new features.

Keep snippets simple and explainable.

Ensure all Shell scripts are linted and Terraform is formatted.

⚠️ Disclaimer
These snippets provide secure baselines, not complete solutions. Always adapt configurations to your specific Threat Model and Compliance Requirements (SOC2, PCI-DSS, etc.).

Created with ❤️ for the DevSecOps Community by Mustafa Alkhazraji