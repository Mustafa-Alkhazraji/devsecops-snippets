
---

# 📄 eks.md

```markdown
# EKS – Kubernetes Security

EKS security is **IAM + Kubernetes combined**.

---

## List Clusters

```bash
aws eks list-clusters


##Describe Cluster
aws eks describe-cluster --name CLUSTER_NAME

##Configure kubectl Access
aws eks update-kubeconfig \
  --name CLUSTER_NAME \
  --region us-east-1

##Verify Access
kubectl get nodes
