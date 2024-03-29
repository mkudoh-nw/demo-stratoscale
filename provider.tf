#Define API Endpoints for Stratoscale Symphony

provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"

  endpoints {
    ec2 = "https://${var.symphony_ip}/api/v2/aws/ec2"
    elb = "https://${var.symphony_ip}/api/v2/aws/elb"
    rds = "https://${var.symphony_ip}/api/v2/aws/rds"
  }

  insecure = "true"
  skip_metadata_api_check = true
  skip_credentials_validation = true
  skip_requesting_account_id = true

  # No importance for this value currently
  region = "us-east-2"

  # Pinning AWS plugin version - supported by Symphony 4.2.7
  version = "1.28.0"
}

  