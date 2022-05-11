terraform {

  # If on a version older than 0.13 comment out this required_providers block
  required_providers {
    vultr = {
      source  = "vultr/vultr"
      version = "2.11.0"
    }
  }

  # Assumes AWS_ACCESS_KEY and AWS_SECRET_ACCESS_KEY environment variables are 
  # defined and match values require for the provided bucket name.
  backend "s3" {
    bucket                      = "my-example-tf-state"
    key                         = "terraform.tfstate"
    endpoint                    = "ewr1.vultrobjects.com"
    region                      = "us-east-1"
    skip_credentials_validation = true
  }
}

# Assumes the VULTR_API_KEY environment variable is defined.
provider "vultr" {
  rate_limit  = 700
  retry_limit = 3
}
