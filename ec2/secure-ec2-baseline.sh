#!/bin/bash
set -euo pipefail

INSTANCE_ID=$1
REGION="us-east-1"

# Ensure instance ID is provided
if [[ -z "$INSTANCE_ID" ]]; then
  echo "Usage: ./secure-ec2-baseline.sh <instance-id>"
  exit 1
fi

# Enable detailed monitoring (security visibility)
aws ec2 monitor-instances \
  --instance-ids "$INSTANCE_ID" \
  --region "$REGION"

# Enforce IMDSv2 (prevents SSRF attacks)
aws ec2 modify-instance-metadata-options \
  --instance-id "$INSTANCE_ID" \
  --http-tokens required \
  --region "$REGION"

echo "EC2 security baseline applied"


###=============================================
🔐 Security Covered

IMDSv2 enforcement

Monitoring enabled

SSRF mitigation
###=============================================