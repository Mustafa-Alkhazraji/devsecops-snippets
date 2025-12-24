# IAM – Identity & Access Management

IAM is the **primary attack surface** in AWS.
This section focuses on **visibility, containment, and least privilege**.

---

## Verify Current Identity

```bash
aws sts get-caller-identity


##List IAM Users (Audit)
aws iam list-users

##List IAM Roles
aws iam list-roles


##Inspect User Access Keys
aws iam list-access-keys --user-name USER_NAME

##Disable Compromised Access Key
aws iam update-access-key \
  --user-name USER_NAME \
  --access-key-id ACCESS_KEY_ID \
  --status Inactive

##Simulate Permissions Before Deployment
aws iam simulate-principal-policy \
  --policy-source-arn arn:aws:iam::ACCOUNT_ID:role/ROLE_NAME \
  --action-names ec2:RunInstances


##Detect Over-Permissive Policies
aws accessanalyzer create-analyzer \
  --analyzer-name account-audit \
  --type ACCOUNT
