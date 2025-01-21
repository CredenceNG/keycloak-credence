# vault/config/vault.hcl
# Storage Backend: Consul
storage "consul" {
  address = "http://consul:8500"
  path    = "vault/"
}

# Listener for Vault API
listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = 1
}

# API and Cluster Configuration
api_addr = "https://vault.credence.ng"
cluster_addr = "http://vault:8200"

# Enable UI
ui = true
