# Configuration provider for basic AWS configuration management

provider "aws" {
  region                      = "us-east-1"
  access_key                  = "ACCESS_KEY"
  secret_key                  = "SECRET_KEY"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true
  s3_force_path_style         = true
  endpoints {
    s3 = "http://localhost:4572"
  }
}

resource "aws_s3_bucket" "b" {
  bucket = "demo-bucket-terraform"
  acl    = "public-read"
}
