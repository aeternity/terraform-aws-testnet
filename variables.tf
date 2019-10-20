variable "vault_addr" {
  description = "Vault server URL address"
}

variable "bootstrap_version" {
  default = "v2.6.5"
}

variable "package" {
  default = "https://releases.aeternity.io/aeternity-5.0.0-rc.6-ubuntu-x86_64.tar.gz"
}
