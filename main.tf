module "aws_deploy-ap-southeast-1" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.3.1"
  env               = "uat"
  color             = "blue"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

  static_nodes   = 1
  spot_nodes_min = 4
  spot_nodes_max = 4

  additional_storage      = true
  additional_storage_size = 30
  snapshot_filename       = "mnesia_uat_v-1_latest.tgz"

  spot_price    = "0.07"
  instance_type = "m4.large"
  ami_name      = "aeternity-ubuntu-16.04-v1549009934"

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.ap-southeast-1"
  }
}

module "aws_deploy-eu-central-1" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.3.1"
  env               = "uat"
  color             = "blue"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

  static_nodes   = 1
  spot_nodes_min = 4
  spot_nodes_max = 4

  additional_storage      = true
  additional_storage_size = 30
  snapshot_filename       = "mnesia_uat_v-1_latest.tgz"

  spot_price    = "0.07"
  instance_type = "m4.large"
  ami_name      = "aeternity-ubuntu-16.04-v1549009934"

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.eu-central-1"
  }
}

module "aws_deploy-us-west-2" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.3.1"
  env               = "uat"
  color             = "green"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

  static_nodes   = 1
  spot_nodes_min = 4
  spot_nodes_max = 4

  additional_storage      = true
  additional_storage_size = 30
  snapshot_filename       = "mnesia_uat_v-1_latest.tgz"

  spot_price    = "0.07"
  instance_type = "m5.large"
  ami_name      = "aeternity-ubuntu-16.04-v1549009934"

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.us-west-2"
  }
}

module "aws_deploy-uat-eu-north-1" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.3.1"
  env               = "uat"
  color             = "green"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

  static_nodes   = 1
  spot_nodes_min = 4
  spot_nodes_max = 4

  additional_storage      = true
  additional_storage_size = 30
  snapshot_filename       = "mnesia_uat_v-1_latest.tgz"

  spot_price    = "0.07"
  instance_type = "m5.large"
  ami_name      = "aeternity-ubuntu-16.04-v1549009934"

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.eu-north-1"
  }
}

module "aws_deploy-uat_mon-ap-southeast-1" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.3.1"
  env               = "uat_mon"
  color             = "blue"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr
  node_config       = "secret/aenode/config/uat_mon@ap-southeast-1"

  spot_nodes_min = 1
  spot_nodes_max = 1

  additional_storage      = true
  additional_storage_size = 30
  snapshot_filename       = "mnesia_uat_v-1_latest.tgz"

  spot_price    = "0.07"
  instance_type = "t3.medium"
  ami_name      = "aeternity-ubuntu-16.04-v1549009934"

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.ap-southeast-1"
  }
}

module "aws_deploy-uat_mon-eu-central-1" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.3.1"
  env               = "uat_mon"
  color             = "blue"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr
  node_config       = "secret/aenode/config/uat_mon@eu-central-1"

  spot_nodes_min = 1
  spot_nodes_max = 1

  additional_storage      = true
  additional_storage_size = 30
  snapshot_filename       = "mnesia_uat_v-1_latest.tgz"

  spot_price    = "0.07"
  instance_type = "t3.medium"
  ami_name      = "aeternity-ubuntu-16.04-v1549009934"

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.eu-central-1"
  }
}

module "aws_deploy-uat_mon-us-west-2" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.3.1"
  env               = "uat_mon"
  color             = "green"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr
  node_config       = "secret/aenode/config/uat_mon@us-west-2"

  spot_nodes_min = 1
  spot_nodes_max = 1

  additional_storage      = true
  additional_storage_size = 30
  snapshot_filename       = "mnesia_uat_v-1_latest.tgz"

  spot_price    = "0.07"
  instance_type = "t3.medium"
  ami_name      = "aeternity-ubuntu-16.04-v1549009934"

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.us-west-2"
  }
}

module "aws_deploy-uat_mon-eu-north-1" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.3.1"
  env               = "uat_mon"
  color             = "green"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr
  node_config       = "secret/aenode/config/uat_mon@eu-north-1"

  spot_nodes_min = 1
  spot_nodes_max = 1

  additional_storage      = true
  additional_storage_size = 30
  snapshot_filename       = "mnesia_uat_v-1_latest.tgz"

  spot_price    = "0.07"
  instance_type = "t3.medium"
  ami_name      = "aeternity-ubuntu-16.04-v1549009934"

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.eu-north-1"
  }
}

module "aws_deploy-uat_backup-eu-central-1" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.4.0"
  env               = "uat"
  kind              = "backup"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr
  node_config       = "secret/aenode/config/uat_backup"

  spot_nodes_min = 1
  spot_nodes_max = 1

  spot_price    = "0.07"
  instance_type = "t3.medium"
  ami_name      = "aeternity-ubuntu-16.04-v1549009934"

  additional_storage      = true
  additional_storage_size = 100
  snapshot_filename       = "empty"

  aeternity = {
    package = var.package
  }

  providers = {
    aws = "aws.eu-central-1"
  }
}
