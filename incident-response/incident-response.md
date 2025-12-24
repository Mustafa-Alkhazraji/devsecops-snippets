
---

# 📄 incident-response.md

```markdown
# Incident Response – AWS CLI

Speed and correctness matter more than perfection.

---

## Investigate IAM Activity

```bash
aws cloudtrail lookup-events \
  --lookup-attributes AttributeKey=EventName,AttributeValue=CreateAccessKey


## List GuardDuty Findings
aws guardduty list-findings --detector-id DETECTOR_ID

## Retrieve Finding Details
aws guardduty get-findings \
  --detector-id DETECTOR_ID \
  --finding-ids FINDING_ID

## Isolate a Security Group
aws ec2 revoke-security-group-ingress \
  --group-id sg-xxxx \
  --protocol all \
  --cidr 0.0.0.0/0

## Snapshot for Forensics
aws ec2 create-snapshot \
  --volume-id vol-xxxx \
  --description "Forensic snapshot"
