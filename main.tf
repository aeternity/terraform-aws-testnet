module "aws_deploy-ap-southeast-1" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.1.0"
  env               = "uat"
  color             = "blue"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

  static_nodes   = 1
  spot_nodes_min = 9
  spot_nodes_max = 9

  additional_storage      = true
  additional_storage_size = 30
  snapshot_filename       = "mnesia_uat_v-1_54.255.167.41_uat_db_backup_1569308314.tgz"

  spot_price    = "0.07"
  instance_type = "m4.large"
  ami_name      = "aeternity-ubuntu-16.04-v1549009934"

  aeternity = {
    package = "https://releases.aeternity.io/aeternity-5.0.0-rc.6-ubuntu-x86_64.tar.gz"
  }

  providers = {
    aws = "aws.ap-southeast-1"
  }
}

module "aws_deploy-eu-central-1" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.1.0"
  env               = "uat"
  color             = "blue"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

  static_nodes   = 1
  spot_nodes_min = 9
  spot_nodes_max = 9

  additional_storage      = true
  additional_storage_size = 30
  snapshot_filename       = "mnesia_uat_v-1_54.255.167.41_uat_db_backup_1569308314.tgz"

  spot_price    = "0.07"
  instance_type = "m4.large"
  ami_name      = "aeternity-ubuntu-16.04-v1549009934"

  aeternity = {
    package = "https://releases.aeternity.io/aeternity-5.0.0-rc.6-ubuntu-x86_64.tar.gz"
  }

  providers = {
    aws = "aws.eu-central-1"
  }
}

module "aws_deploy-us-west-2" {
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.1.0"
  env               = "uat"
  color             = "green"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

  static_nodes   = 1
  spot_nodes_min = 9
  spot_nodes_max = 9

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
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.1.0"
  env               = "uat"
  color             = "green"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

  static_nodes   = 1
  spot_nodes_min = 9
  spot_nodes_max = 9

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
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.1.0"
  env               = "uat_mon"
  color             = "blue"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

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
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.1.0"
  env               = "uat_mon"
  color             = "blue"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

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
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.1.0"
  env               = "uat_mon"
  color             = "green"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

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
  source            = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v2.1.0"
  env               = "uat_mon"
  color             = "green"
  bootstrap_version = var.bootstrap_version
  vault_role        = "ae-node"
  vault_addr        = var.vault_addr

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
