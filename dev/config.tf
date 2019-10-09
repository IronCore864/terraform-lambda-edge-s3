provider "aws" {
  version = "~> 2.0"
  region  = "eu-central-1"
}

provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "tf-state-s3-bucket"
    key            = "tfstate"
    region         = "eu-central-1"
    encrypt        = true
    dynamodb_table = "tf-state-lock-dynamodb-table"
  }
}
