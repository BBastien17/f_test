do_token    = "dop_v1_***"
domain_name = "wimwauters.com"
ssh_key     = "key_digitalocean_2020"
servers = {
  server1 = {
    name    = "Server1"
    size    = "s-2vcpu-2gb"
    image   = "ubuntu-21-10-x64"
    region  = "ams3",
    tags    = ["web", "development"]
    project = "Development"
  },
  server2 = {
    name    = "Server2"
    size    = "s-2vcpu-2gb"
    image   = "ubuntu-20-04-x64"
    region  = "lon1",
    tags    = ["web", "staging"]
    project = "Staging"
  },
  server3 = {
    name    = "Server3"
    size    = "s-2vcpu-2gb"
    image   = "ubuntu-20-04-x64"
    region  = "lon1",
    tags    = ["web", "staging"]
    project = "Staging"
  },
  server4 = {
    name    = "Server4"
    size    = "s-2vcpu-2gb"
    image   = "ubuntu-20-04-x64"
    region  = "lon1",
    tags    = ["web", "development"]
    project = "Development"
  },
  server5 = {
    name    = "Server5"
    size    = "s-2vcpu-2gb"
    image   = "ubuntu-20-04-x64"
    region  = "lon1",
    tags    = ["web", "development"]
    project = "Development"
  }
}

projects = {
  project1 = {
    name        = "Project Development"
    description = "Description for Project Development"
    purpose     = "Web Application"
    environment = "Development"
  },
  project2 = {
    name        = "Project Staging"
    description = "Description for Project Staging"
    purpose     = "Service or API"
    environment = "Staging"
  }
}

