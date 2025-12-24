resource "aws_config_configuration_recorder" "recorder" {
  name     = "config-recorder"
  role_arn = aws_iam_role.config_role.arn
}

resource "aws_config_delivery_channel" "channel" {
  name           = "config-channel"
  s3_bucket_name = "aws-config-logs"
}


###=============================================
🛡️ Purpose

Continuous compliance monitoring

Drift detection

Governance enforcement
###=============================================