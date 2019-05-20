module "aws_deploy-ap-southeast-1" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v1.0.0"
  env               = "uat"
  color             = "blue"
  bootstrap_version = "v2.2.0"
  vault_role        = "ae-node"
  vault_addr        = "${var.vault_addr}"

  static_nodes = 1
  spot_nodes   = 14

  spot_price    = "0.125"
  instance_type = "m4.large"
  ami_name      = "aeternity-ubuntu-16.04-v1549009934"

  aeternity = {
    package = "https://releases.ops.aeternity.com/aeternity-3.0.0-rc.1-ubuntu-x86_64.tar.gz"
  }

  providers = {
    aws = "aws.ap-southeast-1"
  }
}

module "aws_deploy-eu-central-1" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v1.0.0"
  env               = "uat"
  color             = "blue"
  bootstrap_version = "v2.2.0"
  vault_role        = "ae-node"
  vault_addr        = "${var.vault_addr}"

  static_nodes = 1
  spot_nodes   = 9

  spot_price    = "0.125"
  instance_type = "m4.large"
  ami_name      = "aeternity-ubuntu-16.04-v1549009934"

  aeternity = {
    package = "https://releases.ops.aeternity.com/aeternity-3.0.0-rc.1-ubuntu-x86_64.tar.gz"
  }

  providers = {
    aws = "aws.eu-central-1"
  }

  depends_on = ["${module.aws_deploy-ap-southeast-1.static_node_ips}"]
}

module "aws_deploy-us-west-2" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v1.0.0"
  env               = "uat"
  color             = "green"
  bootstrap_version = "v2.2.0"
  vault_role        = "ae-node"
  vault_addr        = "${var.vault_addr}"

  static_nodes = 1
  spot_nodes   = 14

  spot_price    = "0.125"
  instance_type = "m4.large"
  ami_name      = "aeternity-ubuntu-16.04-v1549009934"

  aeternity = {
    package = "https://releases.ops.aeternity.com/aeternity-3.0.0-rc.1-ubuntu-x86_64.tar.gz"
  }

  providers = {
    aws = "aws.us-west-2"
  }
}

module "aws_deploy-uat-eu-north-1" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v1.0.0"
  env               = "uat"
  color             = "green"
  bootstrap_version = "v2.2.0"
  vault_role        = "ae-node"
  vault_addr        = "${var.vault_addr}"

  static_nodes = 1
  spot_nodes   = 9

  spot_price    = "0.07"
  instance_type = "m5.large"
  ami_name      = "aeternity-ubuntu-16.04-v1549009934"

  aeternity = {
    package = "https://releases.ops.aeternity.com/aeternity-3.0.0-rc.1-ubuntu-x86_64.tar.gz"
  }

  providers = {
    aws = "aws.eu-north-1"
  }

  depends_on = ["${module.aws_deploy-us-west-2.static_node_ips}"]
}
