data "digitalocean_ssh_key" "terraform" {
  name = var.ssh_key
}

resource "digitalocean_droplet" "server" {
    for_each = var.servers

    name    =  each.key
    image   =  each.value.image
    size    =  each.value.size
    region  =  each.value.region
    ssh_keys = [
      data.digitalocean_ssh_key.terraform.id
    ]
    tags   = each.value.tags
}

output "droplets" {
  value = digitalocean_droplet.server
}

output "droplet_ip_addresses" {
  value = values(digitalocean_droplet.server)[*].ipv4_address
}


