module "aws_deploy-ap-southeast-1" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v1.2.0"
  env               = "uat"
  color             = "blue"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

  static_nodes = 1
  spot_nodes   = 14

  spot_price    = "0.125"
  instance_type = "m4.large"
  ami_name      = "aeternity-ubuntu-16.04-v1549009934"

  additional_storage      = 1
  additional_storage_size = 30

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.ap-southeast-1"
  }
}

module "aws_deploy-eu-central-1" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v1.2.0"
  env               = "uat"
  color             = "blue"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

  static_nodes = 1
  spot_nodes   = 9

  additional_storage      = 1
  additional_storage_size = 30

  spot_price    = "0.125"
  instance_type = "m4.large"
  ami_name      = "aeternity-ubuntu-16.04-v1549009934"

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.eu-central-1"
  }

  dependency = module.aws_deploy-ap-southeast-1.static_node_ips
}

module "aws_deploy-us-west-2" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v1.2.0"
  env               = "uat"
  color             = "green"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

  static_nodes = 1
  spot_nodes   = 14

  additional_storage      = 1
  additional_storage_size = 30

  spot_price    = "0.125"
  instance_type = "m4.large"
  ami_name      = "aeternity-ubuntu-16.04-v1549009934"

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.us-west-2"
  }
}

module "aws_deploy-uat-eu-north-1" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v1.2.0"
  env               = "uat"
  color             = "green"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

  static_nodes = 1
  spot_nodes   = 9

  spot_price    = "0.07"
  instance_type = "m5.large"
  ami_name      = "aeternity-ubuntu-16.04-v1549009934"

  additional_storage      = 1
  additional_storage_size = 30

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.eu-north-1"
  }

  dependency = module.aws_deploy-us-west-2.static_node_ips
}

module "aws_deploy-uat_mon-ap-southeast-1" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.0.0"
  env               = "uat_mon"
  color             = "blue"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

  spot_nodes_min = 1
  spot_nodes_max = 1

  spot_price    = "0.03"
  instance_type = "t3.medium"
  ami_name      = "aeternity-ubuntu-16.04-v1559735157"

  additional_storage      = true
  additional_storage_size = 30

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.ap-southeast-1"
  }
}

module "aws_deploy-uat_mon-eu-central-1" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.0.0"
  env               = "uat_mon"
  color             = "blue"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

  spot_nodes_min = 1
  spot_nodes_max = 1

  spot_price    = "0.03"
  instance_type = "t3.medium"
  ami_name      = "aeternity-ubuntu-16.04-v1559735157"

  additional_storage      = true
  additional_storage_size = 30

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.eu-central-1"
  }
}

module "aws_deploy-uat_mon-us-west-2" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.0.0"
  env               = "uat_mon"
  color             = "green"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

  spot_nodes_min = 1
  spot_nodes_max = 1

  spot_price    = "0.03"
  instance_type = "t3.medium"
  ami_name      = "aeternity-ubuntu-16.04-v1559735157"

  additional_storage      = true
  additional_storage_size = 30

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.us-west-2"
  }
}

module "aws_deploy-uat_mon-eu-north-1" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.0.0"
  env               = "uat_mon"
  color             = "green"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

  spot_nodes_min = 1
  spot_nodes_max = 1

  spot_price    = "0.03"
  instance_type = "t3.medium"
  ami_name      = "aeternity-ubuntu-16.04-v1559735157"

  additional_storage      = true
  additional_storage_size = 30

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.eu-north-1"
  }
}
