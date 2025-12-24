resource "aws_cloudtrail" "org_trail" {
  name                          = "security-trail"
  s3_bucket_name                = "cloudtrail-logs-secure"
  include_global_service_events = true
  is_multi_region_trail         = true
  enable_logging                = true
}


###=============================================
📜 What this covers

API activity logging

Incident investigation

Compliance evidence
###=============================================