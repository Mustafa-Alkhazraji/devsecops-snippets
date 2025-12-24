#Create IAM role assumable by GitHub Actions using OIDC
resource "aws_iam_role" "github_actions_role" {
  name = "github-actions-oidc-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = {
        Federated = "arn:aws:iam::123456789012:oidc-provider/token.actions.githubusercontent.com"
      }
      Action = "sts:AssumeRoleWithWebIdentity"
      Condition = {
        StringLike = {
          "token.actions.githubusercontent.com:sub" = "repo:ORG/REPO:*"
        }
      }
    }]
  })
}


'''
🔍 Why this is CRITICAL

❌ No AWS keys in GitHub

✅ Short-lived credentials

✅ Zero Trust CI/CD

✅ AWS recommended approach (2024+)
'''