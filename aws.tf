terraform {
  backend "s3" {
    bucket         = "aeternity-terraform-states"
    key            = "ae-testnet.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"
  }
}

provider "aws" {
  region = "ap-southeast-1"
  alias  = "ap-southeast-1"
}

provider "aws" {
  region = "eu-central-1"
  alias  = "eu-central-1"
}

provider "aws" {
  region = "us-west-2"
  alias  = "us-west-2"
}

provider "aws" {
  region = "eu-north-1"
  alias  = "eu-north-1"
}
