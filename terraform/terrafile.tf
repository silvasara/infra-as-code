module "servers" {
  source  = "./servers"
  servers = 2
  blocks  = var.blocks
}

output "ip_address" {
  value = module.servers.ip_address
}
