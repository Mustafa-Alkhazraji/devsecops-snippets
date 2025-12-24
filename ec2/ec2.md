
---

# 📄 ec2.md

```markdown
# EC2 – Compute & Network Controls

Focus: **restricted access, observability, and blast-radius reduction**.

---

## Create Security Group

```bash
aws ec2 create-security-group \
  --group-name prod-sg \
  --description "Production SG" \
  --vpc-id vpc-xxxx


## Restrict SSH Access
aws ec2 authorize-security-group-ingress \
  --group-id sg-xxxx \
  --protocol tcp \
  --port 22 \
  --cidr X.X.X.X/32

## Launch Instance
aws ec2 run-instances \
  --image-id ami-xxxx \
  --instance-type t3.micro \
  --key-name prod-key \
  --security-group-ids sg-xxxx \
  --subnet-id subnet-xxxx

## Enable VPC Flow Logs
aws ec2 create-flow-logs \
  --resource-type VPC \
  --resource-ids vpc-xxxx \
  --traffic-type ALL \
  --log-group-name /aws/vpc/flow-logs
