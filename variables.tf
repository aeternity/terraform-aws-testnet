variable "vault_addr" {
  description = "Vault server URL address"
}

variable "bootstrap_version" {
  default = "v2.6.5"
}

variable "package" {
  default = "https://releases.ops.aeternity.com/aeternity-5.0.0-rc.2-ubuntu-x86_64.tar.gz"
}
