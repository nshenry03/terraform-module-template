provider "aws" {
  region = "${var.region}"
  allowed_account_ids = ["${var.aws_allowed_account_ids}"]
}

data "aws_availability_zones" "available" {}

module "this" {
  source = "../.."

  tags = {
    Owner       = "${var.user}"
    Environment = "dev"
  }
}
