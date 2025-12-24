resource "aws_vpc" "secure_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "secure-vpc"
  }
}


###=============================================
✔️ Foundation for private workloads
✔️ Required for Zero Trust networking
###=============================================