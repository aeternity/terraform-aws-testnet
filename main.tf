module "aws_deploy-ap-southeast-1" {
  source = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v3.4.0"
  env    = "uat"

  static_nodes   = 1
  spot_nodes_min = 2
  spot_nodes_max = 2

  instance_type  = "m5.large"
  instance_types = ["m6i.large", "m5.large"]
  ami_name       = "aeternity-ubuntu-22.04-v1709639419"

  root_volume_size        = 20
  additional_storage      = true
  additional_storage_size = 240

  tags = {
    role  = "aenode"
    env   = "uat"
    color = "blue"
  }

  config_tags = {
    vault_role        = "ae-node"
    vault_addr        = var.vault_addr
    bootstrap_version = var.bootstrap_version
    bootstrap_config  = "secret2/aenode/config/uat"
  }

  providers = {
    aws = aws.ap-southeast-1
  }
}

module "aws_deploy-us-west-2" {
  source = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v3.4.0"
  env    = "uat"

  static_nodes   = 1
  spot_nodes_min = 2
  spot_nodes_max = 2

  instance_type  = "m5.large"
  instance_types = ["m6i.large", "m5.large"]
  ami_name       = "aeternity-ubuntu-22.04-v1709639419"

  root_volume_size        = 20
  additional_storage      = true
  additional_storage_size = 240

  tags = {
    role  = "aenode"
    env   = "uat"
    color = "green"
  }

  config_tags = {
    vault_role        = "ae-node"
    vault_addr        = var.vault_addr
    bootstrap_version = var.bootstrap_version
    bootstrap_config  = "secret2/aenode/config/uat"
  }

  providers = {
    aws = aws.us-west-2
  }
}

module "aws_deploy-uat-eu-north-1" {
  source = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v3.4.0"
  env    = "uat"

  static_nodes   = 1
  spot_nodes_min = 1
  spot_nodes_max = 1

  instance_type  = "m5.large"
  instance_types = ["m6i.large", "m5.large"]
  ami_name       = "aeternity-ubuntu-22.04-v1709639419"

  root_volume_size        = 20
  additional_storage      = true
  additional_storage_size = 240

  tags = {
    role  = "aenode"
    env   = "uat"
    color = "green"
  }

  config_tags = {
    vault_role        = "ae-node"
    vault_addr        = var.vault_addr
    bootstrap_version = var.bootstrap_version
    bootstrap_config  = "secret2/aenode/config/uat"
  }

  providers = {
    aws = aws.eu-north-1
  }
}

module "aws_deploy-uat_mon" {
  source = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v3.4.0"
  env    = "uat_mon"

  spot_nodes_min = 1
  spot_nodes_max = 1

  instance_type  = "t3.medium"
  instance_types = ["t3.medium", "t3.large", "c6i.large"]
  ami_name       = "aeternity-ubuntu-22.04-v1709639419"

  root_volume_size        = 20
  additional_storage      = true
  additional_storage_size = 240

  tags = {
    role  = "aenode"
    env   = "uat_mon"
    color = "green"
  }

  config_tags = {
    vault_role        = "ae-node"
    vault_addr        = var.vault_addr
    bootstrap_version = var.bootstrap_version
    bootstrap_config  = "secret2/aenode/config/uat_mon@eu-central-1"
  }

  providers = {
    aws = aws.eu-north-1
  }
}

module "aws_deploy-uat_backup_full" {
  source = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v3.4.0"
  env    = "uat_backup"

  static_nodes = 1

  instance_type  = "t3.medium"
  instance_types = ["t3.medium", "t3.large", "c6i.large"]
  ami_name       = "aeternity-ubuntu-22.04-v1709639419"

  root_volume_size        = 20
  additional_storage      = true
  additional_storage_size = 300

  tags = {
    role = "aenode"
    env  = "uat_backup"
    kind = "full"
  }

  config_tags = {
    vault_role        = "ae-node"
    vault_addr        = var.vault_addr
    bootstrap_version = var.bootstrap_version
    bootstrap_config  = "secret2/aenode/config/uat_backup_full"
  }

  providers = {
    aws = aws.eu-north-1
  }
}

module "aws_deploy-uat_backup_light" {
  source = "github.com/aeternity/terraform-aws-aenode-deploy?ref=v3.4.0"
  env    = "uat_backup"

  static_nodes = 1

  instance_type  = "t3.medium"
  instance_types = ["t3.medium", "t3.large", "c6i.large"]
  ami_name       = "aeternity-ubuntu-22.04-v1709639419"

  root_volume_size        = 20
  additional_storage      = true
  additional_storage_size = 300

  tags = {
    role = "aenode"
    env  = "uat_backup"
    kind = "light"
  }

  config_tags = {
    vault_role        = "ae-node"
    vault_addr        = var.vault_addr
    bootstrap_version = var.bootstrap_version
    bootstrap_config  = "secret2/aenode/config/uat_backup_light"
  }

  providers = {
    aws = aws.eu-north-1
  }
}
