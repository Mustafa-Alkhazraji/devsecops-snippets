#!/bin/bash
set -euo pipefail

SECRET_NAME="prod/db/password"

# Retrieve secret securely at runtime
SECRET_VALUE=$(aws secretsmanager get-secret-value \
  --secret-id "$SECRET_NAME" \
  --query SecretString \
  --output text)

# Export secret to environment variable (runtime only)
export DB_PASSWORD="$SECRET_VALUE"

echo "Secret loaded securely (not stored on disk)"


###=============================================
🔑 Why this matters

No secrets in code

No .env committed

Runtime-only exposure
###=============================================