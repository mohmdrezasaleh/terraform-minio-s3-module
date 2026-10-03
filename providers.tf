provider "aws" {
  region = "us-east-1"


  endpoints {
    s3 = "http://192.168.179.160:9000"
  }

  s3_use_path_style = true

  skip_credentials_validation = true
  skip_region_validation      = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true
}
